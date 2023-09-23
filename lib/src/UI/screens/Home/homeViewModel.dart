import 'package:api_post_task/src/core/Models/post_models.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  //get data with provider in Rest API

  List<PostModels> datalist = [];

  void getData(List<PostModels> datalist) {
    this.datalist = datalist;
    notifyListeners();
  }
}
