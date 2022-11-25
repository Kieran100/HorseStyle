
import 'package:mongo_dart/mongo_dart.dart';

class Lessons {
  late ObjectId _id;
  late final String _discipline;
  late final String _ground;
  late final String _hours;
  late final String _date;

  Lessons(this._id,this._discipline, this._ground, this._hours, this._date);

  ObjectId get id => _id;

  set id(ObjectId value) {
    _id = value;
  }

  String get discipline => _discipline;

  set discipline(String value) {
    _discipline = value;
  }

  String get ground => _ground;

  set ground(String value) {
    _ground = value;
  }

  String get hours => _hours;

  set hours(String value) {
    _hours = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }
}