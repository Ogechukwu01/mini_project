import 'package:flutter/material.dart';
import 'package:mini_project/features/application/widgets/apply_now.dart';
import 'package:mini_project/features/application/widgets/country_field.dart';
import 'package:mini_project/features/application/widgets/cv_field.dart';
import 'package:mini_project/features/application/widgets/email_field.dart';
import 'package:mini_project/features/application/widgets/first_name_field.dart';
import 'package:mini_project/features/application/widgets/last_name_field.dart';
import 'package:mini_project/features/application/widgets/message_field.dart';
import 'package:mini_project/features/register/pages/register_page.dart';
import 'package:mini_project/features/setting/pages/setting_view.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Apply"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingView()),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 24.0),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "First Name",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 110.0),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Last Name",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 170,
                    child: FirstNameField(),
                  ),
                  SizedBox(width: 8.0),
                  SizedBox(width: 170,
                    child: LastNameField(),
                  ),
                ],
              ),

            ],
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
          EmailField(),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Country",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          CountryField(),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Message",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          MessageField(),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "CV",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          CvField(),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            child: ApplyNow(),
          )
        ],
      ),
    );
  }
}








