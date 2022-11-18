import 'package:flutter/material.dart';
import 'package:to_do_app/util/todo_tiles.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var value;

  HomePage({super.key});
  // list of todo tasks
  List toDoList = [
    ['Make Tutorial', false, 'Do Exercises', false]
  ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: const Text('TO DO'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged,
                value,
                index);
          },
        )
        // children: [
        //   ToDoTile(
        //     taskName: 'Make Tutorial',
        //     taskCompleted: true,
        //     onChanged: (p0) {},
        //   ),
        //   ToDoTile(
        //     taskName: 'Do Exercises',
        //     taskCompleted: false,
        //     onChanged: (p0) {},
        //   ),
        // ],

        );
  }

  //temp. added by the system
  void setState(Null Function() param0) {}
}
