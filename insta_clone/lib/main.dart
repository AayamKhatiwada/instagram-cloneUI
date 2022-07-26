import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    title: "Instagram",
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> stories = [
    "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11961778/pexels-photo-11961778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3276046/pexels-photo-3276046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11961778/pexels-photo-11961778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3276046/pexels-photo-3276046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11961778/pexels-photo-11961778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3276046/pexels-photo-3276046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11961778/pexels-photo-11961778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3276046/pexels-photo-3276046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11961778/pexels-photo-11961778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3276046/pexels-photo-3276046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  ];

  List<Post> posts = [
    Post(
        name: "aayam",
        image:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "jpt"),
    Post(
        name: "aayam",
        image:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "jpt"),
    Post(
        name: "aayam",
        image:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "jpt"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Row(
          children: [
            Container(
              child: Text("Instagram"),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
              size: 24.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.notifications_none_outlined,
                ),
              ),
            ),
            Icon(
              Icons.message,
              color: Colors.white,
              size: 24.0,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: stories.map((e) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image(
                          image: NetworkImage(e),
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text("data"),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(posts[index].image),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Post {
  final String image;
  final String name;
  final String userImage;
  final String caption;

  Post(
      {required this.image,
      required this.name,
      required this.userImage,
      required this.caption});
}
