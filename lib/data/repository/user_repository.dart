import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:seller_app/data/model/user_model.dart';

abstract class IUserRepo {
  Stream<UserModel> getUserInfo({required String uid});
  Future<bool> updateUserInfo(
      String uid, Map<String, dynamic> values, String currentFile);
}

class UserRepository extends IUserRepo {
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  final CollectionReference _db =
      FirebaseFirestore.instance.collection('merchant');

  @override
  Stream<UserModel> getUserInfo({required String uid}) {
    return _db.doc(uid).snapshots().map((event) {
      var dt = event.data() as Map;
      var values = {
        "merchantbanner": dt["merchantbanner"],
        "merchantavatar": dt["merchantavatar"],
        "latitude": dt["latitude"],
        "longitude": dt["longitude"],
        "merchantname": dt["merchantname"],
        "ownername": dt["ownername"],
        "waphonenumber": dt["waphonenumber"],
      };
      return UserModel.fromJson(values);
    });
  }

  @override
  Future<bool> updateUserInfo(
      String uid, Map<String, dynamic> values, String currentFile) async {
    var timestamp = Timestamp.now().millisecondsSinceEpoch;
    String fileURL;
    var getAvatar = values['merchantavatar'] ?? '';
    var getBanner = values['merchantbanner'] ?? '';

    if (getAvatar != '') {
      try {
        await _firebaseStorage
            .ref('merchants/${uid}/Avatar_$timestamp')
            .putFile(getAvatar);
      } on FirebaseException catch (e) {
        print(e.code);
      }
      fileURL = await _firebaseStorage
          .ref('merchants/${uid}/Avatar_$timestamp')
          .getDownloadURL();
      values['merchantavatar'] = fileURL;
    }

    if (getBanner != '') {
      try {
        await _firebaseStorage
            .ref('merchants/${uid}/Banner_$timestamp')
            .putFile(getBanner);
      } on FirebaseException catch (e) {
        print(e.code);
      }
      fileURL = await _firebaseStorage
          .ref('merchants/${uid}/Banner_$timestamp')
          .getDownloadURL();
      values['merchantbanner'] = fileURL;
    }

    if (currentFile != '') {
      await _firebaseStorage.refFromURL(currentFile).delete();
    }

    var up = await _db
        .doc(uid)
        .update(values)
        .then((_) => true)
        .catchError((_) => false);
    return up;
  }
}
