import 'package:flutter/material.dart';
import 'package:json/8.1/Provider/PhotoProvider.dart';
import 'package:provider/provider.dart';

class Photosfromjson extends StatelessWidget {
  const Photosfromjson({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProvider = Provider.of<PhotoProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0.01,
          centerTitle: true,
          title: Text(
            'Person Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body:  ListView.builder(
          itemCount: photoProvider.listOfPhoto.length,
          itemBuilder: (context, index) => ListTile(
            leading: Text(photoProvider.listOfPhoto[index].id.toString(),style: TextStyle(fontSize: 18),),
            title: Text(photoProvider.listOfPhoto[index].title,style: TextStyle(fontSize: 15),),
            trailing: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        photoProvider.listOfPhoto[index].url,
                      )
                  )
              ),
            ),
          ),
        ),
         );
  }
}




