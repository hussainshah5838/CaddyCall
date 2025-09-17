import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../generated/assets.dart';
import '../../../custom/my_text_widget.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesMap), // background image
            fit: BoxFit.cover, // cover the whole screen
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: AppSizes.DEFAULT,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: CommonImageView(
                          svgPath: Assets.svgArrowback,
                        ),
                      ),
                    ),
                    MyText(
                      text: "Track",
                      size: 22,
                      weight: FontWeight.w700,
                      color: kBlackColor,
                      fontFamily: AppFonts.playFair,
                    ),
                    CommonImageView(svgPath: Assets.svgNotification, height: 32),
                  ],
                ),
              ),

              CommonImageView(
                imagePath: Assets.imagesTracking,
                height: 350,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.50, -0.00),
                    end: Alignment(0.50, 1.00),
                    colors: [Colors.white.withValues(alpha: 0), Colors.white],
                  ),
                ),
                child: Padding(
                  padding: AppSizes.DEFAULT,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppSizes.VERTICAL,
                        child: Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 35.0,
                              lineWidth: 4.0,
                              percent: 0.90,

                              center:  CommonImageView(imagePath: Assets.imagesProfilePhoto,height: 55,),
                              progressColor: kPrimaryColor,
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "David Morel",
                                  size: 20,
                                  weight: FontWeight.w600,
                                  fontFamily: AppFonts.playFair,
                                  color:kPrimaryColor,
                                ),
                                SizedBox(height: 7,),
                                MyText(
                                  text: "4.9 based on 100 ratings",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: kText4Color,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        CommonImageView(svgPath: Assets.svgClock),
                                        SizedBox(height: 8,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          spacing: 12,
                                          children: [
                                            Container(
                                              width: 6,
                                              height: 6,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Container(
                                              width: 9,
                                              height: 9,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Container(
                                              width: 12,
                                              height: 12,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        CommonImageView(svgPath: Assets.svgPinLocation),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: "Your delivery time",
                                          size: 15,
                                          weight: FontWeight.w400,
                                          color: kText4Color,
                                        ),
                                        SizedBox(height: 7,),
                                        MyText(
                                          text: "15 minutes",
                                          size: 17,
                                          weight: FontWeight.w500,
                                          color: kPrimaryColor,
                                        ),
                                        SizedBox(height: 50,),
                                        MyText(
                                          text: "Your address",
                                          size: 15,
                                          weight: FontWeight.w400,
                                          color: kText4Color,
                                        ),
                                        SizedBox(height: 7,),
                                        MyText(
                                          text: "Wisteria st 30, Houston, TX",
                                          size: 17,
                                          weight: FontWeight.w500,
                                          color: kPrimaryColor,
                                        ),
                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                          CommonImageView(imagePath: Assets.imagesPhone,height: 70,),
                        ],
                      )

                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
