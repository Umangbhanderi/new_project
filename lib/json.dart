import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:new_project/post.dart';
// import 'post.dart';

class Json extends StatefulWidget {
  const Json({super.key});

  @override
  State<Json> createState() => _JsonState();
}

class _JsonState extends State<Json> {
  Future<List<Post>> showPosts() async {
    var data = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    var dataDecoded = json.decode(data.body);

    List<Post> posts = [];
    dataDecoded.forEach((post) {
      posts.add(Post(post["name"], post["body"]));
    });

    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: showPosts(),
          builder: ((context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          snapshot.data![index].title,
                          style: TextStyle(fontSize: 30.0),
                        ),
                        Divider(),
                        Text(
                          snapshot.data![index].text,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Divider(),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Read more ....."))
                      ],
                    ),
                  );
                });
          })),
    );
  }
}
