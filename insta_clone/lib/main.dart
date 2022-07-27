import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(backgroundColor: Colors.black),
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
    "https://images.pexels.com/photos/12196835/pexels-photo-12196835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11832019/pexels-photo-11832019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12576758/pexels-photo-12576758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11961778/pexels-photo-11961778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3276046/pexels-photo-3276046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12196835/pexels-photo-12196835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/11832019/pexels-photo-11832019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/12576758/pexels-photo-12576758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  ];

  List<Post> posts = [
    Post(
        name: "Post_1",
        image:
            "https://images.pexels.com/photos/12196835/pexels-photo-12196835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/12823102/pexels-photo-12823102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "This post number 1"),
    Post(
        name: "Post_2",
        image:
            "https://images.pexels.com/photos/11832019/pexels-photo-11832019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/10673160/pexels-photo-10673160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "This post number 2"),
    Post(
        name: "Post_3",
        image:
            "https://images.pexels.com/photos/12931722/pexels-photo-12931722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/11805722/pexels-photo-11805722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "This post number 3"),
    Post(
        name: "Post_4",
        image:
            "https://images.pexels.com/photos/12826233/pexels-photo-12826233.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/12576758/pexels-photo-12576758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "This post number 4"),
    Post(
        name: "Post_5",
        image:
            "https://images.pexels.com/photos/7657404/pexels-photo-7657404.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/4947740/pexels-photo-4947740.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "This post number 5"),
    Post(
        name: "Post_6",
        image:
            "https://images.pexels.com/photos/11762028/pexels-photo-11762028.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        userImage:
            "https://images.pexels.com/photos/6159168/pexels-photo-6159168.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "This post number 6"),
  ];

  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.black,
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
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                alignment: Alignment.bottomRight,
                child: Icon(
                  size: 30,
                  Icons.notifications_none_outlined,
                ),
              ),
            ),
            Icon(
              Icons.message,
              color: Colors.white,
              size: 26,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            color: Color.fromARGB(255, 0, 0, 0),
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
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
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
            height: 388,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 8),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: NetworkImage(posts[index].userImage),
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: RichText(
                                  text: TextSpan(
                                text: posts[index].name,
                              )),
                            ),
                            SizedBox(
                              width: 250,
                            ),
                            Icon(
                              Icons.more_vert,
                            ),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(posts[index].image),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.message_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                          ),
                          SizedBox(
                            width: 230,
                          ),
                          Icon(
                            Icons.collections,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 5, 0, 3),
                        alignment: Alignment.topLeft,
                        child: Text("28,000 likes"),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 1),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: posts[index].name,
                              ),
                              TextSpan(
                                text: "  ${posts[index].caption}",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "view all 2002 comments",
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 111, 111)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "22 hours ago",
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 111, 111)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {
              currentPage = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "add",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "store",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo),
              label: "photo",
            ),
          ]),
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
