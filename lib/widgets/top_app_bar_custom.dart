import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopAppBarCustom extends StatelessWidget {
  const TopAppBarCustom({
    super.key,
    required this.length,
    required this.haveShadow,
  });

  final int length;
  final bool haveShadow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25, left: 25, top: 9.32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.blackColor,
              ),
              child: Center(child: Image.asset(Assets.images.back.path)),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whiteColor,
                    boxShadow: haveShadow
                        ? [
                            BoxShadow(
                              color: AppColors.blackColor.withValues(
                                alpha: 0.1,
                              ),
                              blurRadius: 5,
                              spreadRadius: 4,
                            ),
                          ]
                        : null,
                  ),
                  child: Center(child: Image.asset(Assets.images.topBag.path)),
                ),

                Positioned(
                  right: 0,
                  child: Visibility(
                    visible: length != 0,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.blackColor,
                      ),
                      child: Center(
                        child: Text(
                          length.toString(),
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                          ),
                        ),
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
