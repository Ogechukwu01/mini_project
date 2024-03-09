import 'package:flutter/material.dart';
import 'package:mini_project/features/profile/pages/profile_view.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileView()),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: MessageItems(),
    );
  }
}
class MessageItems extends StatelessWidget {

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
      itemExtent: 50,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: ListTile(
            title: Text(
                      texts[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
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
          ),
        );
      },
    );
  }
}
