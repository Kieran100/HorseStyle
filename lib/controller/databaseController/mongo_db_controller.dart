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
    print(status);
    var collection = db.collection(COLLECTION_HORSE);
    print(await collection.find().toList());
   /* await collection.insertOne({
      "id": "1",
      "name": "lulu",
      "picture":"?",
      "age":"1",
      "coat":"brown",
      "breed":"truc",
      "gender":"female",
      "ability":"truc",
      "owner": "roger",
      "stable":"ecurie de reve",
      "dp":"yes",
    });*/

  }

  static getUserByName(name) async{
    connect();
    await collectionUser.find(where.eq('name', name)).toList();
  }
}