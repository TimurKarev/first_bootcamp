import 'dart:convert';

import 'package:first_bootcamp/screens/async_request/model/placeholder_model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/photos";

  Future<List<PlaceholderModel>> getPosts() async {
    http.Response res = await http.get(Uri.parse(postsURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      final picture = body.map((e) => PlaceholderModel.fromMap(e)).toList();

      return picture;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
