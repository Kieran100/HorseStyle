import 'dart:typed_data';

import 'package:mongo_dart/mongo_dart.dart';

class UserModel{
  final ObjectId objectId;
  final String username;
  final String email;
  final String password;
  final Int64List img_profile;
  var horse_owner;
  var ride;
  var owner;

  UserModel(this.objectId,this.username,this.email,this.password,this.img_profile,this.horse_owner,this.ride,this.owner);

}