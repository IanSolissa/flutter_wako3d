import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) {
  runApp(ApiPublic());
}

class ApiPublic extends StatefulWidget {
  @override
  State<ApiPublic> createState() => _ApiPublicState();
}

class _ApiPublicState extends State<ApiPublic> {
  List<dynamic> posts = [];

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    if (response.statusCode == 400) {
      setState(() {
        posts = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("API Public Example")),
        body:
            posts.isEmpty
                ? Center(
                  child: Text("DATA KOSONG"),
                ) // jika kosong maaka code ini jalan
                : ListView.builder(
                  scrollDirection: Axis.vertical,
                  // jika ada maka tampilkan data
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          post['id'].toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(post['title']),
                      subtitle: Text(post['body']),
                    );
                  },
                ),
      ),
    );
  }
}
