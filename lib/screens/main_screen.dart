import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/screens/cart_screen.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(
              index: _selectedItem,
              children: [
                HomeScreen(),
                CartScreen(),
                Center(child: Text('not')),
                Center(child: Text('profile')),
              ],
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackColor.withValues(alpha: 0.1),
                      blurRadius: 7,
                      offset: Offset(0, -2),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _selectedItem != 0
                        ? SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedItem = 0;
                                });
                              },
                              child: ImageIcon(
                                AssetImage(Assets.images.home.path),
                                color: AppColors.blackColor,
                                size: 16,
                              ),
                            ),
                          )
                        : Container(
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors
                                  .bottomAppBarItemActiveBackgroundColor,
                            ),

                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(Assets.images.home.path),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    right: 12,
                                  ),
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    _selectedItem != 1
                        ? SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedItem = 1;
                                });
                              },
                              child: ImageIcon(
                                AssetImage(Assets.images.cart.path),
                                color: AppColors.blackColor,
                                size: 16,
                              ),
                            ),
                          )
                        : Container(
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors
                                  .bottomAppBarItemActiveBackgroundColor,
                            ),

                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ImageIcon(
                                    AssetImage(Assets.images.cart.path),
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    right: 12,
                                  ),
                                  child: Text(
                                    'Cart',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    _selectedItem != 2
                        ? SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedItem = 2;
                                });
                              },
                              child: ImageIcon(
                                AssetImage(Assets.images.notification.path),
                                color: AppColors.blackColor,
                                size: 16,
                              ),
                            ),
                          )
                        : Container(
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors
                                  .bottomAppBarItemActiveBackgroundColor,
                            ),

                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ImageIcon(
                                    AssetImage(Assets.images.notification.path),
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    right: 12,
                                  ),
                                  child: Text(
                                    'Notification',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    _selectedItem != 3
                        ? SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedItem = 3;
                                });
                              },
                              child: ImageIcon(
                                AssetImage(Assets.images.profile.path),
                                color: AppColors.blackColor,
                                size: 16,
                              ),
                            ),
                          )
                        : Container(
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors
                                  .bottomAppBarItemActiveBackgroundColor,
                            ),

                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ImageIcon(
                                    AssetImage(Assets.images.profile.path),
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    right: 12,
                                  ),
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
