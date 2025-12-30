import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List products = [Assets.images.bag1.path, Assets.images.watch.path];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _appBarHomeScreen(),
                  _welcomeFashionApp(),
                  _searchBar(),
                  _productListView(),
                  _viewAllRow(),
                ],
              ),
            ),

            _products(),
          ],
        ),
      ),
    );
  }

  Widget _products() {
    final productImages = [
      Assets.images.bag.path,
      Assets.images.shoes.path,
      Assets.images.bag.path,
      Assets.images.shoes.path,
      Assets.images.bag.path,
      Assets.images.shoes.path,
    ];

    return SliverPadding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 50),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: productImages.length,
          (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailScreen()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Image.asset(productImages[index]),

                        Positioned(
                          right: 15,
                          top: 15,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.circular(1000),
                              ),
                              child: Center(child: Assets.images.hart.image()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11),
                  Text(
                    'The Marc Jacobs',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Traveler Tote',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.subTextColor,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$195.00',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 15,
          childAspectRatio: 155 / 240,
        ),
      ),
    );
  }

  Widget _viewAllRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New Arrivals',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: TextStyle(
                fontSize: 11,
                color: AppColors.subTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _productListView() {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: 182,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: index == 0 ? 25 : 0, right: 15),
              width: 260,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.productCartColor,
              ),

              child: Stack(
                children: [
                  Positioned.fill(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(products[index], fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 17,
                    bottom: 17,
                    right: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '50% Off',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),

                        Text(
                          'On everything today',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            'With code:FSCREATION',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: AppColors.subTextColor,
                            ),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 5,
                            ),
                            backgroundColor: AppColors.blackColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                          child: Text(
                            'Get Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 16.38),
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.searchFillColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.38, left: 26),
                    child: Assets.images.search.image(),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 13,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: AppColors.searchHintColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Center(child: Assets.images.sort.image()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _welcomeFashionApp() {
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
