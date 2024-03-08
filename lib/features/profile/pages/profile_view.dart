import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: Icon(Icons.arrow_back_ios),
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
          Container(
            height: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 30.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ogechukwu Nnenna",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 1.0),
                  ),
                ),
              ),
            ),
          ),
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
          Container(
            height: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 30.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "eleodimuooge@gmail.com",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 1.0),
                  ),
                ),
              ),
            ),
          ),
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
          Container(
            height: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 30.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "*********",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 1.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 55.0),
          Container(
            height: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.teal,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 30.0,
                child: Text(
                  "Save Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
