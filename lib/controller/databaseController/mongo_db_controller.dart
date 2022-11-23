import 'dart:developer';
import 'package:horsestyle/controller/databaseController/constante.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDataBaseController {
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    var status = db.serverStatus();
    inspect(db);
  }

  static addUser() async{
    connect();
  }
}