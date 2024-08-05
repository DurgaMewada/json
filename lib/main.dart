import 'package:flutter/material.dart';
import 'package:json/8.1/Provider/PhotoProvider.dart';
import 'package:json/8.2/Provider/UserDataProvider.dart';
import 'package:provider/provider.dart';

import '8.1/View/PhotosFromJson.dart';
import '8.2/View/UserDataScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> UserDataProvider(),
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UserInfo(),
      ),
    );
  }
}
