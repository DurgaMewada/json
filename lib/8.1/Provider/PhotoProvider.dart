import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../Modal/PhotoModal.dart';

class PhotoProvider extends ChangeNotifier{
  List<PhotoModal> listOfPhoto= [];
  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/Json/Photo.json');
    List photo=jsonDecode(json);
    return photo;
  }
  Future<void> fromList()
  async {
    List Photo =await jsonParsing();
    listOfPhoto=Photo.map((e) => PhotoModal.fromMap(e)).toList();
    notifyListeners();
  }
  PhotoProvider(){
    fromList();
  }
}

