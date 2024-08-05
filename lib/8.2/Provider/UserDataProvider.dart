import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/8.2/Modal/UserDateModal.dart';

class UserDataProvider extends ChangeNotifier {
  List<UserModal> UserList = [];

  Future<void> userJsonParsing() async {
    String userJson = await rootBundle.loadString('assets/Json/UserInfo.json');
    List userdata = jsonDecode(userJson);
    UserList = userdata.map((e) => UserModal.fromMap(e),).toList();
    notifyListeners();
  }
  UserDataProvider()
  {
    userJsonParsing();
  }
}