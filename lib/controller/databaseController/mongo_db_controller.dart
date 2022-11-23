import 'dart:developer';
import 'package:horsestyle/controller/databaseController/constante.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDataBaseController {
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_USER);
  }

  static addUser() async{
    connect();
  }
}