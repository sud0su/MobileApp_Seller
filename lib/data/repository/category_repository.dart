import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:seller_app/data/model/category_model.dart';

abstract class ICatRepo {
  Future<bool> checkDocumentField(String id);
  Future<bool> createCategoryCollection(Map<String, dynamic> values);
  Future<bool> deleteCategory(Map<String, dynamic> values);
  Future<bool> updateCategory(Map<String, dynamic> values);

  Stream<List<CategoryModel>> getCategoryList({required String id});
}

class CategoryRepository extends ICatRepo {
  final CollectionReference _db =
      FirebaseFirestore.instance.collection('category');

  @override
  Future<bool> checkDocumentField(String id) async {
    var check = await _db
        .doc(id)
        .get()
        .then((value) => value.exists ? true : false)
        .catchError((_) => false);
    return check;
  }

  @override
  Future<bool> createCategoryCollection(Map<String, dynamic> values) async {
    var add = await _db
        .doc(values['id'])
        .collection('categories')
        .doc()
        .set(values['data'])
        .then((_) => true)
        .catchError((_) => false);
    return add;
  }

  @override
  Future<bool> deleteCategory(Map<String, dynamic> values) async {
    var del = await _db
        .doc(values['id'])
        .collection('categories')
        .doc(values['catid'])
        .delete()
        .then((_) => true)
        .catchError((_) => false);
    return del;
  }

  @override
  Future<bool> updateCategory(Map<String, dynamic> values) async {
    var up = await _db
        .doc(values['id'])
        .collection('categories')
        .doc(values['catid'])
        .update({'category': values['category']})
        .then((_) => true)
        .catchError((_) => false);
    return up;
  }

  @override
  Stream<List<CategoryModel>> getCategoryList({required String id}) {
    return _db
        .doc(id)
        .collection('categories')
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.docs.map((doc) {
              var dt = doc.data() as Map;
              var values = {
                'uid': doc.id,
                'category': dt['category'],
              };
              return CategoryModel.fromJson(values);
            }).toList());
  }
}
