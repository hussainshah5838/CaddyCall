import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        actions: [
          CommonImageView(svgPath: Assets.svgNotification),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                CommonImageView(imagePath: Assets.imagesH1),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          MyText(
                            text: "Welcome ",
                            size: 15,
                            weight: FontWeight.w700,
                            color: kQuaternaryColor,
                          ),
                          CommonImageView(
                            imagePath: Assets.imagesHand,
                            height: 20,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '  to ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.33,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Caddy Call',
                                  style: TextStyle(
                                    color: kTertiaryColor,
                                    fontSize: 22,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.33,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      MyText(
                        text:
                            "Ready for your next round? Find nearby courses or check in to start playing!",
                        size: 12,
                        weight: FontWeight.w400,
                        color: kText3Color,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: AppSizes.DEFAULT,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Nearby Club Courses",
                    size: 24,
                    weight: FontWeight.w700,
                    fontFamily: AppFonts.playFair,
                    color: kBlackColor,
                  ),
                  SizedBox(height: 10,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                            color: kQuaternaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 25,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              CommonImageView(
                                imagePath: Assets.imagesPlaceholder1,
                                height: 82,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: MyText(
                                            text: "St Andrews Links (Old Course)",
                                            size: 14,
                                            weight: FontWeight.w700,
                                            color: kBlackColor,
                                          ),
                                        ),
                                        CommonImageView(svgPath: Assets.svgHeart),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              MyText(
                                                text: "Pebble Beach, CA",
                                                size: 12,
                                                weight: FontWeight.w400,
                                              ),
                                              SizedBox(height: 8),
                                              RatingBar.builder(
                                                initialRating: 3,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemSize: 15,
                                                itemBuilder: (context, _) => Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: 78,
                                                height: 20,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0x1E013221),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(8),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: MyText(
                                                    text: "Open Now",
                                                    size: 10,
                                                    weight: FontWeight.w400,
                                                    color: kPrimaryColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100,
                                          height: 30,
                                          child: MyButton(
                                            onTap: () {},
                                            buttonText: "View Details",
                                          ),
                                        ),
                                      ],
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
                  SizedBox(height: 10),
                  MyButton(onTap: () {}, buttonText: "Check In For a Round"),
                  SizedBox(height: 10),
                  MyBorderButton(buttonText: "Map Location", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
