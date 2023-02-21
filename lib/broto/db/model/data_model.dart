import 'package:hive/hive.dart';

class StudentModel extends HiveObject{
  final String name;
  final String age;

  StudentModel({required this.name,required this.age});
}