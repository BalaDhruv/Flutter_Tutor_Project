import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_hello/models/todos.dart';

class WebClient {
  Future<List<Todos>> getTodos() async {
    var url = 'https://jsonplaceholder.typicode.com/todos';

    http.Response res = await http.get(url);

    List jsonRes = json.decode(res.body) as List;

    List<Todos> todosList = [];

    jsonRes.forEach((element) {
      Todos todo = Todos.fromJson(element);

      todosList.add(todo);
    });

    print(todosList);

    return todosList;
  }
}
