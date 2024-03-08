import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

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

  final List<String> texts = [
    "New Post",
    "Got Hired",
    "Get Rejected",
    "Message",
    "Call",
    "Dark Mode",
  ];
  final List<String> subtitles = [
    "if any new post update",
    "if you get hired by any company",
    "if you get rejected by any company",
    "Got any message",
    "Make a call",
    "Enable Dark theme",

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: texts.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Container(
            padding: EdgeInsets.only(bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    texts[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
          ),
          subtitle: Row(
            children: [
              Text(
                subtitles[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Transform.scale(
                      scale: 0.5,
                      child: Switch(
                        value: true,
                        onChanged: (bool value) {
                        },
                        activeColor: Colors.teal,
                      ),
                    ),
                  ),
              ),
            ],
          ),
        );
      },
    );
  }
}
