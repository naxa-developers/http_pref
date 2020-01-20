import 'package:flutter/material.dart';
import 'package:http_pref_example/endpoints.dart';
import 'package:http_pref_example/repository/post_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String response = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder<String>(
          future: postRepository.getPosts(getPost),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text("${snapshot.data}");
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
