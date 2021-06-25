import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:seller_app/data/model/product_model.dart';

abstract class IProductRepo {
  Stream<List<ProductModel>> getProductList({required String id});
  Future<bool> createProduct(Map<String, dynamic> values);
  Future<void> deleteProduct(String id);
}

class ProductRepository extends IProductRepo {
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  final CollectionReference _db =
      FirebaseFirestore.instance.collection('product');

  @override
  Future<bool> createProduct(Map<String, dynamic> values) async {
    String thumbnailUrl;
    var timestamp = Timestamp.now().millisecondsSinceEpoch;
    var getThumbnail = values['thumbnail'];

    if (getThumbnail != '') {
      File thumbnail = File(getThumbnail);
      try {
        await _firebaseStorage
            .ref(
                'products/${values['merchant_id']}/${values['nameBarang']}$timestamp')
            .putFile(thumbnail);
      } on FirebaseException catch (e) {
        print(e.code);
      }

      thumbnailUrl = await _firebaseStorage
          .ref(
              'products/${values['merchant_id']}/${values['nameBarang']}$timestamp')
          .getDownloadURL();
    } else {
      thumbnailUrl = '';
    }

    Map<String, dynamic> newvalues = {
      'merchant_id': values['merchant_id'],
      'thumbnail': thumbnailUrl,
      'nameBarang': values['nameBarang'],
      'category': values['category'],
      'beratBarang': int.parse(values['beratBarang']),
      'hargaBarang': int.parse(values['hargaBarang']),
      'created': Timestamp.now(),
    };

    var add = await _db
        .doc()
        .set(newvalues)
        .then((_) => true)
        .catchError((_) => false);
    return add;
  }

  @override
  Future<void> deleteProduct(String id) async {
    var del = await _db.doc(id).delete();
    return del;
  }

  @override
  Stream<List<ProductModel>> getProductList(
      {required String id, List? category}) {
    Query query = _db.where('merchant_id', isEqualTo: id);

    return query
        .orderBy('created', descending: true)
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.docs.map((doc) {
              var dt = doc.data() as Map;
              var values = {
                "uid": doc.id,
                "beratBarang": dt['beratBarang'],
                "hargaBarang": dt['hargaBarang'],
                "nameBarang": dt['nameBarang'],
                "thumbnail": dt['thumbnail'],
                "category": dt['category'],
              };
              return ProductModel.fromJson(values);
            }).toList());
  }
}
