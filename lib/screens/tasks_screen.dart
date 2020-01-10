import 'package:flutter/material.dart';
import 'package:to_do_flutter/widgets/tasks_list.dart';
import 'package:to_do_flutter/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/models/task_data.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9c9ca3),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/background.jpg'),
              ),
              Container(
                padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Do. Or Do Not.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'There Is No Try.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(Provider.of<TaskData>(context).taskCount == 1 ?
                    '${Provider.of<TaskData>(context).taskCount} Task' :
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF9c9ca3),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
    );
  }
}
