import 'package:cloud_firestore/cloud_firestore.dart';

Stream<QuerySnapshot> getList() {
  return FirebaseFirestore.instance.collection('shirts').snapshots();
}

Stream<QuerySnapshot> getCartList() {
  return FirebaseFirestore.instance.collection('Favorites').snapshots();
}
