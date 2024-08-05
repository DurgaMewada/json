import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json/8.3/Modal/PostModal.dart';


class PostProvider extends ChangeNotifier
{
  late PostModal postModal;
  Future<void> postJsonParsing()
  async {
    String json = await rootBundle.loadString('assets/Json/Posts.json');
    final response = jsonDecode(json);
    postModal = PostModal.fromJson(response);
    notifyListeners();
  }

  PostProvider()
  {
    postJsonParsing();
  }
}