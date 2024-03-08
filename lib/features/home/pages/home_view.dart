import 'package:flutter/material.dart';
import 'package:mini_project/features/home/widgets/popular_job_card.dart';
import 'package:mini_project/features/home/widgets/popular_job_item.dart';
import 'package:mini_project/features/home/widgets/product_designer_card.dart';
import 'package:mini_project/features/home/widgets/recent_post_card.dart';
import 'package:mini_project/features/home/widgets/recent_post_item.dart';
import 'package:mini_project/features/home/widgets/square_box.dart';
import 'package:mini_project/features/home/widgets/visual_designer_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
          bottom: false,
          minimum: EdgeInsets.only(top: 30),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 16 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SquareBox(),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/images/Oge.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search here...",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                ),
                                onChanged: (text) {
                                },
                              ),
                            ),
                        ),
                        SizedBox(
                            height: 50.0,
                        ),
                        Expanded(
                          flex: 1,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: SquareBox(),
                            ),
                        ),
                      ],
                    ),
                  ),
                PopularJobItem(),
                PopularJobCard(),
                RecentPostItem(),
                RecentPostCard(),
                SizedBox(height: 5),
                ProductDesignerCard(),
                SizedBox(height: 5),
                VisualDesignerCard()
    ],
    ),
      ),
    );
  }
}






