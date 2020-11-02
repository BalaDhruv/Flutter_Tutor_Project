import 'package:flutter/material.dart';
import 'package:test_hello/models/todos.dart';
import 'package:test_hello/reposirtory/repository.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> nums = [1, 2, 32, 32, 32, 2];
  Repository repository;
  List<Todos> todosList = [];

  @override
  void initState() {
    repository = Repository();
    super.initState();
    callAPI();
  }

  callAPI() async {
    todosList = await repository.getTodos();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test App')),
      body: ListView.builder(
        padding: EdgeInsets.all(20.0),
        itemCount: todosList.length,
        itemBuilder: (context, index) {
          return Text(todosList[index].title);
        },
      ),
    );
  }
}
