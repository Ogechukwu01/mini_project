import 'package:flutter/material.dart';
import 'package:mini_project/features/application/widgets/application_view.dart';
import 'package:mini_project/features/profile/widgets/password_field.dart';
import 'package:mini_project/features/register/widgets/email_address_field.dart';
import 'package:mini_project/features/register/widgets/sign_up.dart';
import 'package:mini_project/features/register/widgets/username_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
              MaterialPageRoute(builder: (context) => ApplicationView()),
          );
        },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
       body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 5.0),
                Text(
                  "Register Account",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Fill your details or continue "
                      "\nwith social media",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          UsernameField(),
          SizedBox(height: 24.0),
          EmailAddressField(),
          SizedBox(height: 24.0),
          PasswordField(),
          SizedBox(height: 50.0),
          SignUp(),
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 20,
                height: 1,
                color: Colors.black54,
              ),
              SizedBox(width: 8),
              Text(
                "Or continue with",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 20,
                height: 1,
                color: Colors.black54,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset(
                "assets/images/google_icon.png",
                width: 40,
                height: 40,
              ),
              SizedBox(width: 16),
              Image.asset(
                "assets/images/facebook.png",
                width: 40,
                height: 40,
              ),
            ],
          ),
          SizedBox(
            height: 70.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Text(
                "Already Have Account?  ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                ),
              ),
                SizedBox(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      );
  }
}






