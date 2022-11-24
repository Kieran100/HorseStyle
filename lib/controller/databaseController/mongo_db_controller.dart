import 'dart:developer';
import 'package:horsestyle/controller/databaseController/constante.dart';
import 'package:mongo_dart/mongo_dart.dart';

var userCollection;

class MongoDataBaseController {

  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(COLLECTION_USER);
    var status = db.serverStatus();

  }


  static getUser() async {
    try {
      final users = await userCollection.findOne();
      return users;
    } catch (e) {
      return Future.error(e);
    }
  }

  static getUserByUsername(name) async{
    try{
      final users = await userCollection.findOne(where.eq('username', name));
      return users;
    }catch(e){
      return Future.error(e);
    }
  }

  static setUser() async {
    try{
      final users = await userCollection.insertOne();
      return users;
    }catch(e){
      return Future.error(e);
    }
  }

}