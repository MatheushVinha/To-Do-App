import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];

  // reference the box

  final _mybox = Hive.box('mybox');

  // run this method if is the fist time to open this app

  void createInitialData() {
    toDoList = [
      ['Ser mais positivo', false],
      ['Se elogiar mais', false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  //updte the database
  void updateDataBase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
