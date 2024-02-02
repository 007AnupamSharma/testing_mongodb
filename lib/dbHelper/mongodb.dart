// import 'dart:developer';

import 'dart:io';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:mongo_demo/dbHelper/constants.dart';

class MongoDatabase {
  // static var db, userCollection;
  // static connect() async {
  //   var db = await Db.create(MONGO_CONN_URL);
  //   await db.open();
  //   // print('Database instance: $db');
  //   var status = db.serverStatus();
  //   print(status);
  //   var userCollection = db.collection(USER_COLLECTION);
  //   print(await userCollection.find().toList());
  // }
  Future<void> connect() async {
  // Create a SecurityContext with more permissive certificate verification
  // final securityContext = SecurityContext()
  //   ..setTrustedCertificatesBytes((await File('path/to/ca_certificate.pem').readAsBytes()).toList());

  final db = Db(MONGO_CONN_URL);
  
  await db.open();
  print('Connected to MongoDB');

  // Your further code logic here...
}
}
