
import 'package:flutter/material.dart';
import 'package:mini_project/features/home/widgets/popular_job_item.dart';

class PopularJobCard extends StatelessWidget {
  const PopularJobCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0)
        ),
        padding: EdgeInsets.all(16.0),
        height: 140,
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/google_icon.png",
                        width: 20,
                        height: 20,
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Image.asset(
                      "assets/images/heart_icon.png",
                      width: 20,
                      height: 20,
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
                Text(
                    "Google",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Lead Product Manager",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                ),
                SizedBox(height: 5),
                Text(
                  "\$2500/m Toronto, Canada",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
      ],
            ),
      ),
    );
  }
}
