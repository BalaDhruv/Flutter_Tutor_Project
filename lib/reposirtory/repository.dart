import 'package:test_hello/models/todos.dart';
import 'package:test_hello/reposirtory/web_client/web_client.dart';

class Repository {
  WebClient _webClient;

  Repository() {
    _webClient = WebClient();
  }

  Future<List<Todos>> getTodos() => _webClient.getTodos();
}
