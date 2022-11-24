import 'package:horsestyle/model/enum_discipline.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'enum_ground.dart';

class Lessons {
  late Discipline discipline;
  late Ground ground;
  late String hours;
  late String date;

  Lessons(this.discipline, this.ground, this.hours, this.date);
}