import 'dart:convert';

import 'package:api_post_task/src/core/constants/constant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  getPosts() async {
    print("testing 1");
    try {
      final response = await http.get(Uri.parse(postUrl));

      // print(response.body);
      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);

        return data;

        // print(data[0]);
      } else {
        print("There are some error");
      }
    } catch (e) {
      print("eror :$e");
    }
  }
}
