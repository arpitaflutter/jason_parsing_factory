import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jason_parsing_factory/screens/post/model/post_model.dart';

class Post_provider extends ChangeNotifier
{

  List<dynamic> PostList = [];
  Future<void> jasonParsing()
  async {
    String jasonParsing = await rootBundle.loadString("assets/json/post.json");
    var jsonData = jsonDecode(jasonParsing);

    List<dynamic> postModelList = jsonData.map((e) => PostModel().fromJson(e)).toList();

    PostList = postModelList;
    notifyListeners();
  }
}