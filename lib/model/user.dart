import 'dart:typed_data';

import 'package:mongo_dart/mongo_dart.dart';

class UserModel{
  late ObjectId objectId;
  late String username;
  late String email;
  late String password;
  late Int64List img_profile;
  var horse_owner;
  var ride;
  var owner;

}

class User extends UserModel{

  @override
  set objectId(ObjectId _objectId) {
    // TODO: implement objectId
    super.objectId = _objectId;
  }
  @override
  // TODO: implement objectId
  ObjectId get objectId => super.objectId;

  @override
  set username(String _username) {
    // TODO: implement username
    super.username = _username;
  }

  @override
  // TODO: implement username
  String get username => super.username;

  @override
  set email(String _email) {
    // TODO: implement email
    super.email = _email;
  }

  @override
  // TODO: implement email
  String get email => super.email;

  @override
  set password(String _password) {
    // TODO: implement password
    super.password = _password;
  }

  @override
  // TODO: implement password
  String get password => super.password;

  @override
  set img_profile(Int64List _img_profile) {
    // TODO: implement img_profile
    super.img_profile = _img_profile;
  }

  @override
  // TODO: implement img_profile
  Int64List get img_profile => super.img_profile;

  @override
  set horse_owner(_horse_owner) {
    // TODO: implement horse_owner
    super.horse_owner = _horse_owner;
  }
  @override
  // TODO: implement horse_owner
  get horse_owner => super.horse_owner;

  @override
  set ride(_ride) {
    // TODO: implement ride
    super.ride = _ride;
  }

  @override
  // TODO: implement ride
  get ride => super.ride;

  @override
  set owner(_owner) {
    // TODO: implement owner
    super.owner = _owner;
  }

  @override
  // TODO: implement owner
  get owner => super.owner;

}
