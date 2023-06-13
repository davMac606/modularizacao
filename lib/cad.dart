// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modularizacao/student.dart';
import 'package:modularizacao/student_repository.dart';

class MyCad extends StatefulWidget {
  const MyCad({super.key});

  @override
  State<MyCad> createState() => _MyCadState();
}

class _MyCadState extends State<MyCad> {
  int ra = 0;
  String name = "";
  TextEditingController cntRa = TextEditingController();
  TextEditingController cntName = TextEditingController();
  StudentRepository stdL = StudentRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: cntRa,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'RA',
            ),
          ),
          TextField(
            controller: cntName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'name',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  ra = int.parse(cntRa.text);
                  name = cntName.text;
                  Student std = Student(ra, name);
                  stdL.add(std);
                  stdL.printStudent();
                  setState(() {});
                });
              },
              child: Icon(Icons.save))
        ],
      )),
    );
  }
}
