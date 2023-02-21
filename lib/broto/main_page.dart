import 'package:flutter/material.dart';
import 'package:hive_demo/pages/home.dart';

import 'add_student_widget.dart';
import 'list_student_widget.dart';

void main(){
  runApp(const MaterialApp(
    home: ScreenHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AddStudentWidget(),
              const Expanded(child:ListStudentWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
