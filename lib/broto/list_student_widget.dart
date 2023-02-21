import 'package:flutter/material.dart';
import 'package:hive_demo/broto/db/functions/db_functions.dart';

import 'db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext context, List<StudentModel>studentList, Widget?child) {
        return ListView.separated(
            itemBuilder: (context,index){
              final data=studentList[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
              );
            },
            separatorBuilder: (context,index){
              return Divider();
            },
            itemCount:studentList.length);
      },
    );
  }
}
