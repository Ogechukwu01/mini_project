import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            color: Colors.black54,
          ),
          SizedBox(width: 8.0,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "User Name",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                    vertical: 8.0, horizontal: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}