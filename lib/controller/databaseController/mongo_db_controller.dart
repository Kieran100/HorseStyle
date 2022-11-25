import 'dart:developer';
import 'package:horsestyle/controller/databaseController/constante.dart';
import 'package:horsestyle/model/lessons.dart';
import 'package:mongo_dart/mongo_dart.dart';

import '../../model/user.dart';

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

      final find = await userCollection.findOne();

      UserModel user = new UserModel(
        find['_id'],
        find['username'],
        find['email'],
        find['password'],
        find['img_profile'],
        find['horse_owner'],
        find['ride'],
        find['owner']
      );
      return user;
    } catch (e) {
      return Future.error(e);
    }
  }

  static getUserByUsername(name) async{
    try{
      final find = await userCollection.findOne(where.eq('username', name));

      UserModel user = new UserModel(
          find['_id'],
          find['username'],
          find['email'],
          find['password'],
          find['img_profile'],
          find['horse_owner'],
          find['ride'],
          find['owner']
      );

      return user;
    }catch(e){
      return Future.error(e);
    }
  }

  static setUser(UserModel user) async {
    try{
      final users = userCollection.insertOne({
        'username': user.username,
        'email': user.email,
        'passworld': user.password,
        'img_profile': user.img_profile,
        'horse_owner': user.horse_owner,
        'ride': user.ride,
        'owner': user.owner
      });
    }catch(e){
      return Future.error(e);
    }
  }

  static setlessons(Lessons _lessons) async {
    try{
      final lessons = userCollection.insertOne({
      'discipline': _lessons.discipline,
      'ground': _lessons.ground,
      'hours': _lessons.hours,
      'date': _lessons.date
      });
    }catch(e){
      return Future.error(e);
    }
  }
}