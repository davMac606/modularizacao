// ignore_for_file: unused_field, prefer_final_fields, unnecessary_this, avoid_print

import 'package:modularizacao/student.dart';

class StudentRepository {
  List<Student> _students = [];

  StudentRepository() {
    this._students = [];
  }

  void add(Student std) {
    _students.add(std);
  }

  void printStudent() {
    for (var i = 0; i < _students.length; i++) {
      print("RA: ${_students[i].ra}, Nome: ${_students[i].name}");
    }
  }
}
