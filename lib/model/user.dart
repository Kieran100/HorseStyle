import 'dart:ffi';

import 'package:mongo_dart/mongo_dart.dart';

class UserModel{

  late final ObjectId _objectId;
  late final String _username;
  late final String _email;
  late final String _password;
  late final int _img_profile;
  late final _horse_owner;
  late final _ride;
  late final _owner;

  UserModel(
      this._objectId,
      this._username,
      this._email,
      this._password,
      this._img_profile,
      this._horse_owner,
      this._ride,
      this._owner
      );

  ObjectId get objectId => _objectId;

  set objectId(ObjectId value) {
    _objectId = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  int get img_profile => _img_profile;

  set img_profile(int value) {
    _img_profile = value;
  }

  get horse_owner => _horse_owner;

  set horse_owner(value) {
    _horse_owner = value;
  }

  get ride => _ride;

  set ride(value) {
    _ride = value;
  }

  get owner => _owner;

  set owner(value) {
    _owner = value;
  }
}