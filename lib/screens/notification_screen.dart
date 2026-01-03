import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/widgets/top_app_bar_notification.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 9.32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopAppBarNotification(),
                    SizedBox(height: 24),
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.only(
                right: 25,
                left: 25,
                top: 14,
                bottom: 80,
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 20,

                  (context, index) => Container(
                    margin: EdgeInsets.only(bottom: 18),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.asset(
                                Assets.images.user.path,
                                width: 60,
                                height: 60,
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'John Smith',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                            color: AppColors.subTextColor,
                                          ),
                                          text:
                                              ' — Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
                                        ),
                                      ],
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '3 hours ago',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: AppColors.subTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        index != 19
                            ? Divider(
                                color: const Color.fromARGB(255, 214, 207, 207),
                                thickness: 1,
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
