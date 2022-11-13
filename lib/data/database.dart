import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];
  // reference to our box
  final _myBox = Hive.box("mybox");

  // we gonna run this method, when the app  opened at first time ever
  void createInitialData() {
    todoList = [
      ["Do Homework", false],
      ["Do exercise", false]
    ];
  }

  // load the data from db
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the db
  void updateDataBase() {
    _myBox.put("TODOLIST", todoList);
  }
}
