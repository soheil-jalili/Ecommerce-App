import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/widgets/top_app_bar_custom.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final sizes = ['S', 'M', 'L', 'XL', 'XXL'];

  final colors = [
    AppColors.whiteColor,
    AppColors.blackColor,
    Color(0xffCADCA7),
    Color(0xffF79F1F),
  ];

  int selectedSize = 2;
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(top: 0, left: 0, right: 0, child: _topImage(context)),

            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
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
                      spreadRadius: 0,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),

                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 25, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Roller Rabbit',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Vado Odelle Dress',
                                style: TextStyle(
                                  color: AppColors.subTextColor,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.toggleCounter,
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 11,
                                left: 14,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) => Padding(
                              padding: EdgeInsets.only(
                                right: index == 4 ? 0 : 4.42,
                              ),
                              child: Image.asset(
                                Assets.images.star.path,
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ),
                          SizedBox(width: 9.2),
                          Text(
                            '(320 Review)',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 11,
                            ),
                          ),

                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Avaliable in stok',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 23,
                                  bottom: 12,
                                ),
                                child: Text(
                                  'Size',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              Row(
                                children: [
                                  ...List.generate(
                                    sizes.length,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedSize = index;
                                        });
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(
                                          right: index == 4 ? 0 : 15,
                                        ),

                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 1,
                                            color: AppColors.borderColor,
                                          ),

                                          color:
                                              sizes[index] ==
                                                  sizes[selectedSize]
                                              ? AppColors.blackColor
                                              : Colors.transparent,
                                        ),

                                        child: Center(
                                          child: Text(
                                            sizes[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  sizes[index] ==
                                                      sizes[selectedSize]
                                                  ? AppColors.whiteColor
                                                  : AppColors.textSizeColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.blackColor.withValues(
                                        alpha: 0.1,
                                      ),
                                      blurRadius: 7,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ...List.generate(
                                      colors.length,
                                      (index) => GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedColor = index;
                                          });
                                        },
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(
                                            bottom: index != 3 ? 10 : 0,
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: colors[index],

                                            border: Border.all(
                                              width: 1,
                                              color:
                                                  colors[index] ==
                                                      AppColors.whiteColor
                                                  ? AppColors.borderColorsColor
                                                  : Colors.transparent,
                                            ),
                                          ),

                                          child:
                                              colors[selectedColor] ==
                                                  colors[index]
                                              ? ImageIcon(
                                                  AssetImage(
                                                    Assets.images.tick.path,
                                                  ),
                                                  color:
                                                      colors[selectedColor] ==
                                                          AppColors.whiteColor
                                                      ? Colors.black
                                                      : AppColors.whiteColor,
                                                )
                                              : SizedBox.shrink(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Text(
                        'Description',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.',
                        maxLines: 3,
                        style: TextStyle(
                          color: AppColors.subTextColor,
                          fontSize: 11,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 26,
              left: 25,
              right: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          color: AppColors.totalPriceColor,
                          fontSize: 9,
                        ),
                      ),
                      Text(
                        '\$198.00',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blackColor,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(Assets.images.btnBag.path),
                        SizedBox(width: 15.95),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17),
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topImage(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 430,
          child: Image.asset(Assets.images.detail.path, fit: BoxFit.cover),
        ),

        TopAppBarCustom(length: 0, haveShadow: false),

        Positioned(
          bottom: 40,
          right: 25,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.whiteColor,
              ),
              child: Center(child: Image.asset(Assets.images.hartDetail.path)),
            ),
          ),
        ),
      ],
    );
  }
}
