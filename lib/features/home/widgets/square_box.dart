import 'package:flutter/material.dart';

class SquareBox extends StatelessWidget {
  const SquareBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: 0.5,
            child: Container(
              height: 3,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 2),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: Container(
              height: 3,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 2),
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Container(
              height: 3,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
