import 'package:flutter/material.dart';
import 'package:hello_world/controller/api_controller.dart';
import 'package:hello_world/models/post.dart';

class Pertemuan10 extends StatefulWidget {
  @override
  _Pertemuan10State createState() => _Pertemuan10State();
}

class _Pertemuan10State extends State<Pertemuan10> {
  ApiController apiController = ApiController();
  List<Post> posts = [];

  bool loading = true;

  @override
  void initState() {
    super.initState();
    getPost();
  }

  getPost() async {
    var res = await apiController.fetchPosts();
    setState(() {
      loading = false;
      posts = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan 10'),
        ),
        body: loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Text(posts[i].title),
                      subtitle: Text(posts[i].body),
                    ),
                  );
                },
                itemCount: posts.length,
              ));
  }
}
