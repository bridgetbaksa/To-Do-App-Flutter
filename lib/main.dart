import 'package:flutter/material.dart';
import 'package:to_do_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

