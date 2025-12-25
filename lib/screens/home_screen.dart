import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBarHomeScreen(),

              _welcomeFashionApp(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _welcomeFashionApp() {
    return Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome,',
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Our Fashions App',
                    style: TextStyle(
                      color: AppColors.subTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
  }

  Padding _appBarHomeScreen() {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 41, 25, 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Center(child: Assets.images.menu.image()),
            ),
          ),

          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.profileBgColor,
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Assets.images.avatar.image(),
          ),
        ],
      ),
    );
  }
}
