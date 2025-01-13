import 'package:cloud_firestore/cloud_firestore.dart';

class SearchCatalog1Repo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  SearchCatalog1Repo();

  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      // Fetching data from Firestore
      QuerySnapshot querySnapshot =
          await _firestore.collection('propertise').get();
      List<Map<String, dynamic>> products = [];

      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs) {
          Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;
          if (data != null && data.isNotEmpty) {
            products.add(data);
          }
        }
      }
      
      return products;
    } catch (e) {
      print("Firestore exception: $e");
      throw e;
    }
  }
}
