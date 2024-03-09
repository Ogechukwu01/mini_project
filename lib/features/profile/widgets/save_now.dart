import 'package:flutter/material.dart';

class SaveNow extends StatelessWidget {
  const SaveNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}