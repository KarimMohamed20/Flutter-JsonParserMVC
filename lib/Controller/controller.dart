import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xmpp_chat/Model/model.dart';
// Main Controller Class
class Controller {
  var model = Model();
  Future getData() async {
    model.response = await http.get(model.getJsonUrl);
    model.posts = jsonDecode(model.response.body);
    return model.posts;
  }
}