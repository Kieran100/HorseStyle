import 'dart:ffi';

class Competition{
  late final String _name;
  late final String _adress;
  late final String _date;
  late final Array _listRider;

  Competition(this._name, this._adress, this._date, this._listRider);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Array get listRider => _listRider;

  set listRider(Array value) {
    _listRider = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get adress => _adress;

  set adress(String value) {
    _adress = value;
  }
}