import 'dart:convert';

import 'package:hello_world/models/post.dart';
import 'package:http/http.dart' as http;

class ApiController {
  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Post> data = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

      return data;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
