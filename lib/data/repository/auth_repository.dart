import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:seller_app/data/model/auth_model.dart';
import 'package:seller_app/utils/exceptions.dart';

abstract class IAuthRepo {
  Stream<AuthModel?> get onAuthStateChanged;

  Future<Option<AuthModel>> getSignedInUser();

  Future<Either<AuthResultStatus, Unit>> signInWithEmailAndPassword(
      String email, String password);

  Future<Either<AuthResultStatus, Unit>> signInWithSmsCode(
      String smscode, Map<String, dynamic> registerData);

  Future<void> verifyPhoneNumber(String phonenumber);

  Future<void> signOut();
}

class AuthRepository extends IAuthRepo {
  final _firebaseAuth = FirebaseAuth.instance;
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  final CollectionReference _db =
      FirebaseFirestore.instance.collection('merchant');

  String _verificationCode = "";

  AuthModel? _userFromFirebase(User? user) =>
      user == null ? null : AuthModel(uid: user.uid);

  @override
  Stream<AuthModel?> get onAuthStateChanged =>
      _firebaseAuth.authStateChanges().asyncMap(_userFromFirebase);

  @override
  Future<Either<AuthResultStatus, Unit>> signInWithEmailAndPassword(
      String email, String password) async {
    final String getEmail = email + "@belipintar.com";
    final String getPassword = 'BeliPintar!32#@7' + password;

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: getEmail, password: getPassword);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Option<AuthModel>> getSignedInUser() async =>
      optionOf(_userFromFirebase(_firebaseAuth.currentUser));

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  // Otp Verification
  @override
  Future<void> verifyPhoneNumber(String phonenumber) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phonenumber,
      timeout: Duration(seconds: 3),
      verificationCompleted: (authCredential) =>
          _verificationComplete(authCredential),
      verificationFailed: (authException) => _verificationFailed(authException),
      codeAutoRetrievalTimeout: (verificationId) =>
          _codeAutoRetrievalTimeout(verificationId),
      codeSent: (verificationId, [code]) =>
          _smsCodeSent(verificationId, [code]),
    );
  }

  _verificationComplete(AuthCredential authCredential) {
    // FirebaseAuth.instance.signInWithCredential(authCredential).then((authResult) {});
    print('_verificationComplete');
  }

  String? _verificationFailed(FirebaseAuthException authException) {
    return authException.message;
  }

  void _codeAutoRetrievalTimeout(String verificationCode) {
    this._verificationCode = verificationCode;
  }

  void _smsCodeSent(String verificationCode, List<int?> code) {
    this._verificationCode = verificationCode;
  }

  @override
  Future<Either<AuthResultStatus, Unit>> signInWithSmsCode(
      String smscode, Map<String, dynamic> registerData) async {
    PhoneAuthCredential _phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _verificationCode, smsCode: smscode);
    try {
      await _firebaseAuth.signInWithCredential(_phoneAuthCredential).then((_) {
        final _mailcredential = EmailAuthProvider.credential(
          email: registerData['phonemail'],
          password: 'BeliPintar!32#@7' + registerData['password'],
        );
        _firebaseAuth.currentUser!.linkWithCredential(_mailcredential).then(
          (_) async {
            String fileURL;
            var timestamp = Timestamp.now().millisecondsSinceEpoch;

            if (registerData['merchantavatar'] != '') {
              try {
                await _firebaseStorage
                    .ref(
                        'merchants/${_firebaseAuth.currentUser!.uid}/Avatar_$timestamp')
                    .putFile(File(registerData['merchantavatar']));
              } on FirebaseException catch (e) {
                print(e.code);
              }
              fileURL = await _firebaseStorage
                  .ref(
                      'merchants/${_firebaseAuth.currentUser!.uid}/Avatar_$timestamp')
                  .getDownloadURL();
              registerData['merchantavatar'] = fileURL;
            }

            await _db
                .doc(_firebaseAuth.currentUser!.uid)
                .set(registerData)
                .then((_) => true)
                .catchError((_) => false);
          },
        );
      });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthExceptionHandler.handleException(e));
    }
  }
}
