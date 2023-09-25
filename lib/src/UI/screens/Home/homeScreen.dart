import 'package:api_post_task/src/UI/screens/Home/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<PostModels> postList = [];

  // Future<List<PostModels>> getPostApi() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   var data = jsonDecode(response.body.toString());
  //   print(data.toString());

  //   if (response.statusCode == 200) {
  //     // print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh');
  //     for (var i in data) {
  //       postList.add(PostModels.fromJson(i));
  //     }
  //     return postList;
  //   } else {
  //     return postList;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade300,
          title: const Text('Posts'),
        ),
        body: Consumer<HomeViewModel>(
          builder: (context, Model1, child) {
            return Column(
              children: [
                Expanded(
                  child: FutureBuilder(
                      future: Model1.getPost(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox();
                        } else if (snapshot.data.length > 0) {
                          return ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      // Get.to(PostComment(
                                      //   postObj:Model1. postList[index],
                                      //   id: postList[index].id,
                                      // ));
                                    },
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.white,
                                      child: ListTile(
                                        title: Text(
                                          snapshot.data![index].title
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        subtitle: Text(snapshot
                                            .data![index].body
                                            .toString()),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
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
                          return Container();
                        }
                      }),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

//Text('testing);

// bode:{
//   "email":"emakdlk",
//   "apdiild":alkdlk,
//   "'oikjakdklalkdlk":olkdkldkl
// }
