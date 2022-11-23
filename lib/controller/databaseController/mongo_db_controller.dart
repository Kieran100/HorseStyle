import 'dart:developer';
import 'package:horsestyle/controller/databaseController/constante.dart';
import 'package:mongo_dart/mongo_dart.dart';

var db;
var collectionUser;

class MongoDataBaseController {
  static connect() async{
    db = await Db.create(MONGO_URL);
    await db.open();
    var status = db.serverStatus();
    inspect(db);
  }

  static getUserByName(name) async{
    connect();
    await collectionUser.find(where.eq('name', name)).toList();
  }
}