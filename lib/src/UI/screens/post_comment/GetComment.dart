import 'dart:convert';

import 'package:api_post_task/src/core/Models/comment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class PostComment extends StatelessWidget {
  var postObj;
  var id;
  PostComment({super.key, this.postObj, this.id});

  List<CommentModel> postList = [];

  Future<List<CommentModel>> getCommentApi() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/$id/comments'));
    var data = jsonDecode(response.body.toString());
    print(data.toString());

    if (response.statusCode == 200) {
      // print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh');
      for (var i in data) {
        postList.add(CommentModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade300,
          title: const Text('Post Detail'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    postObj.title.toString(),
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(postObj.body.toString()),
                ),
              ),
            ),
            Text(
              "Comments :",
              style: GoogleFonts.poppins(
                  fontSize: 21, fontWeight: FontWeight.w700),
            ),
            Expanded(
                child: FutureBuilder(
                    future: getCommentApi(),
                    builder: (context, snapshort) {
                      if (!snapshort.hasData) {
                        return const SpinKitCircle(
                          size: 30,
                          color: Colors.blue,
                        );
                      } else {
                        return ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                    elevation: 5,
                                    color: const Color.fromARGB(
                                        255, 204, 255, 149),
                                    child: Column(
                                      children: [
                                        const SingleChildScrollView(
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: CircleAvatar(
                                                  radius: 24,
                                                  backgroundColor: Colors.amber,
                                                  child: CircleAvatar(
                                                    child: Icon(Icons.person),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          snapshort.data![index].name
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(snapshort
                                              .data![index].body
                                              .toString()),
                                        ),
                                        Text(
                                          snapshort.data![index].email
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.cyan),
                                        )
                                      ],
                                    )),
                              );
                            });
                      }
                    })),
          ],
        ),
      ),
    );
  }
}
