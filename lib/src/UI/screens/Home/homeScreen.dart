import 'dart:convert';

import 'package:api_post_task/src/UI/screens/post_comment/GetComment.dart';
import 'package:api_post_task/src/core/Models/post_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostModels> postList = [];

  Future<List<PostModels>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    print(data.toString());

    if (response.statusCode == 200) {
      // print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh');
      for (var i in data) {
        postList.add(PostModels.fromJson(i));
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
          title: Text('Posts'),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPostApi(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SpinKitHourGlass(
                                size: 40, color: Colors.amberAccent),
                          ),
                          Center(
                              child: Text(
                            'Loading...',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))
                        ],
                      );
                    } else {
                      return ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(PostComment(
                                    postObj: postList[index],
                                    id: postList[index].id,
                                  ));
                                },
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: ListTile(
                                    title: Text(
                                      snapshot.data![index].title.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    subtitle: Text(
                                        snapshot.data![index].body.toString()),
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
