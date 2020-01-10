import 'package:flutter/material.dart';
import 'package:to_do_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10,),
            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white,
              ),),
              color: Color(0xFF9c9ca3),
              onPressed: (){
                if(newTaskTitle != null){
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
