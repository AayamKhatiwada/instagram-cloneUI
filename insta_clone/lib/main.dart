import 'package:flutter/material.dart';

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
  final List<Story> stories = [
    Story(image: "assets/1.png", caption: "story_1"),
    Story(image: "assets/4.png", caption: "story_2"),
    Story(image: "assets/2.jpg", caption: "story_3"),
    Story(image: "assets/3.jpg", caption: "story_4"),
    Story(image: "assets/1.png", caption: "story_5"),
    Story(image: "assets/4.png", caption: "story_6"),
  ];

  List<Post> posts = [
    Post(
        name: "Post_1",
        image: "assets/1.png",
        userImage: "assets/4.png",
        caption: "This post number 1"),
    Post(
        name: "Post_2",
        image: "assets/2.jpg",
        userImage: "assets/4.png",
        caption: "This post number 2"),
    Post(
        name: "Post_3",
        image: "assets/3.jpg",
        userImage: "assets/4.png",
        caption: "This post number 3"),
    Post(
        name: "Post_4",
        image: "assets/4.png",
        userImage: "assets/4.png",
        caption: "This post number 4"),
    Post(
        name: "Post_5",
        image: "assets/1.png",
        userImage: "assets/1.png",
        caption: "This post number 5"),
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
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 0, 0, 0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: stories.length,
              itemBuilder: (context, index) {
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
                        child: Image.asset(
                          stories[index].image,
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: RichText(
                            text: TextSpan(text: stories[index].caption)),
                      ),
                    ],
                  ),
                );
              },
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
                              child: Image.asset(
                                posts[index].image,
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
                      Image.asset(
                        posts[index].image,
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

class Story {
  final String image;
  final String caption;

  Story({required this.image, required this.caption});
}
