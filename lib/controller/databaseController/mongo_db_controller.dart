import 'dart:developer';
import 'package:horsestyle/controller/databaseController/constante.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDataBaseController {
  static connect() async{
    var db = await Db.create(MONGO_URL);
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

  static addUser() async{
    connect();
  }
}