import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class PostApi extends StatefulWidget {
  const PostApi({super.key});

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // void Login(String email, password) async {
  //   try {
  //     Response response = await post(
  //         Uri.parse('https://reqres.in/api/register'),
  //         body: {'email': email, 'password': password});
  //     if (response.statusCode == 200) {
  //       print('Account created Successfully');
  //     } else {
  //       print('Failed');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  void postSomeData() async {
    var url = 'https://reqres.in/api/register';
    var data = {
      'email': emailController.text,
      'password': passwordController.text,
    };
    // var bodyy = json.encode(data);
    var urlparse = Uri.parse(url);
    Response response = await http.post(
      urlparse,
      body: json.encode(data),
    );
    var dataa = jsonDecode(response.body);
    print(dataa);
    print('Testing');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Post Api')),
          backgroundColor: const Color.fromARGB(231, 79, 226, 226),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(
                height: 70,
              ),
              InkWell(
                onTap: () {
                  postSomeData();
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.shade300,
                  ),
                  child: const Center(
                    child: Text('Login'),
                  ),
                ),
              ),
              // const Text('please login')
            ],
          ),
        ),
      ),
    );
  }
}
