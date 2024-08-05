import 'package:flutter/material.dart';
import 'package:json/8.3/Provider/PostProvider.dart';
import 'package:provider/provider.dart';

class Postscreen extends StatelessWidget {
  const Postscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.01,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Posts ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: postProvider.postModal.posts.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey.shade100,
              child: ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    postProvider.postModal.posts[index].title,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        postProvider.postModal.posts[index].body,
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.perm_identity_sharp,
                            size: 23,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            postProvider.postModal.posts[index].userId.toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          Icon(
                            Icons.favorite_border,
                            size: 23,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            postProvider.postModal.posts[index].reactions.likes
                                .toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
