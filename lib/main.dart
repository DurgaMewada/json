import 'package:flutter/material.dart';
import 'package:json/8.1/Provider/PhotoProvider.dart';
import 'package:provider/provider.dart';

import '8.1/View/PhotosFromJson.dart';

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
      create: (context)=> PhotoProvider(),
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Photosfromjson(),
      ),
    );
  }
}
