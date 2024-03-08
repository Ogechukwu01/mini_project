import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
          ),
        ],
      ),
      body: MyListView(),
    );
  }
}
class MyListView extends StatelessWidget {
  final List<String> images = [
    "assets/images/image_one.jpg",
    "assets/images/image_six.jpg",
    "assets/images/image_seven.jpg",
    "assets/images/Oge.jpg",
    "assets/images/image_nine.jpg",
    "assets/images/image_eight.jpg",
    "assets/images/image_four.jpg",

  ];
  final List<String> texts = [
    "Ogechukwu Nnenna",
    "Anaya Sanji",
    "Allison",
    "Natasha",
    "Hack Eye",
    "Stephanie",
    "Banner",
  ];
  final List<String> subtitles = [
    "A wonderful serenity has taken...",
    "What about Paypal?",
    "We should move forward to talk with...",
    "Let's have a call for future projects",
    "I don't think I can fit on this ui, we should...",
    "Move in some special work recently so...",
    "I am going to die in Avengers end game..."

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index]),
            ),
            title: Text(
              texts[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              subtitles[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
              ),
            ),
          );
      },
    );
  }
}
