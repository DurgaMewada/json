import 'package:flutter/material.dart';
import 'package:json/8.2/Provider/UserDataProvider.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    UserDataProvider userDataProvider = Provider.of<UserDataProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.01,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'User Info From Json',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.grey.shade200,
            child: Container(
              height: 200,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Name :- ${userDataProvider.UserList[index].name}',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'UserName :- ${userDataProvider.UserList[index].username}',
                          style: TextStyle(
                              // fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'UserID :- ${userDataProvider.UserList[index].id.toString()}',
                          style: TextStyle(
                              // fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Text(
                      'Address :-    City : ${userDataProvider.UserList[index].address.city},',
                      style: TextStyle(
                          fontSize: 15),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'Street :${userDataProvider.UserList[index].address.city}',
                          style: TextStyle(
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Text(
                      'Email :- ${userDataProvider.UserList[index].email}',
                      style: TextStyle(
                          fontSize: 15),
                    ),
                    Text(
                      'Company :- ${userDataProvider.UserList[index].company.name}',
                      style: TextStyle(
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        itemCount: userDataProvider.UserList.length,
      ),
    );
  }
}

// body:  ListView.builder(
//   itemCount: userDataProvider.UserList.length,
//   itemBuilder: (context, index) => ListTile(
//     leading: Text(userDataProvider.UserList[index].id.toString()),
//     title:
//     subtitle: Text(userDataProvider.UserList[index].address.street),
//     trailing: Text(userDataProvider.UserList[index].address.geo.lat),
//   ),
// ),
