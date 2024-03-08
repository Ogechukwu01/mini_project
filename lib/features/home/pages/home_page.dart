import 'package:flutter/material.dart';
import 'package:mini_project/features/home/pages/home_view.dart';
import 'package:mini_project/features/message/pages/message_view.dart';
import 'package:mini_project/features/profile/pages/profile_view.dart';
import 'package:mini_project/features/setting/pages/setting_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    MessageView(),
    ProfileView(),
    SettingView()
  ];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: listOfPages,
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.teal.shade500,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
          label: "Message"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting"
          ),
        ],
      ),
    );
  }
}
