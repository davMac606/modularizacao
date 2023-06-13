// ignore_for_file: unnecessary_getters_setters, unnecessary_this

class Student {
  int _ra;
  String _name;
  
  Student(this._ra, this._name);


  get ra => this._ra;

 set ra( value) => this._ra = value;

  get name => this._name;

 set name( value) => this._name = value;

}
