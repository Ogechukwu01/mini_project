import 'package:flutter/material.dart';
import 'package:mini_project/features/message/pages/message_view.dart';
import 'package:mini_project/features/profile/widgets/name_field.dart';
import 'package:mini_project/features/profile/widgets/email_field.dart';
import 'package:mini_project/features/profile/widgets/password_field.dart';
import 'package:mini_project/features/profile/widgets/save_now.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessageView()),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 24.0),
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                "assets/images/Oge.jpg",
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            "Ogechukwu Nnenna",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 0.0),
          Text(
              "Edit Profile",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 24.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "Name",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          NameField(),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Email",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          EmailField(),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          PasswordField(),
          SizedBox(height: 55.0),
          SaveNow(),
        ],
      ),
    );
  }
}





