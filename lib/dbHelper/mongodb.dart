// import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:mongo_demo/dbHelper/constants.dart';

class MongoDatabase {
  static var db, userCollection;

  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();

    var userCollection = db.collection(USER_COLLECTION);
    // print(await userCollection.find().toList());
  }
}
