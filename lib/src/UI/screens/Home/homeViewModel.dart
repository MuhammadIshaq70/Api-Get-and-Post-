import 'package:api_post_task/src/core/services/api.dart';
import 'package:flutter/material.dart';

import '../../../core/Models/post_models.dart';

class HomeViewModel extends ChangeNotifier {
  ApiService apiService = ApiService();
  List<PostModels> postList = [];

  HomeViewModel() {
    // print("Constrocutor called");
    // getPost();
  }
  //get data with provider in Rest API

  // List<PostModels> datalist = [];

  // void getData(List<PostModels> datalist) {
  //   this.datalist = datalist;
  //   notifyListeners();
  // }

  getPost() async {
    print("Testingg");
    try {
      List data = await apiService.getPosts();

      for (var i in data) {
        postList.add(PostModels().fromJson(i));
      }

      print(postList.length);

      // notifyListeners();

      return postList;
    } catch (e) {
      print('arshad');
    }
  }
}
