import 'package:http/http.dart' as http;

// Main Model Class
class Model{
  http.Response response;
  String getJsonUrl = 'https://jsonplaceholder.typicode.com/posts';
  List posts;
}