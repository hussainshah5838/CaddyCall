import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:caddy_call/view/screens/user/setting/achievements_screen.dart';
import 'package:caddy_call/view/screens/user/setting/history_screen.dart';
import 'package:caddy_call/view/screens/user/setting/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../shop/shopping_cart_screen.dart';



class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Setting",
        actions: [
          CommonImageView(svgPath: Assets.svgNotification, height: 32),
          SizedBox(width: 10),
        ],

      ),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: ShapeDecoration(
                color: kWBGColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  CommonImageView(
                    imagePath: Assets.imagesPf,
                    height: 70,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Username",
                          size: 16,
                          weight: FontWeight.w600,
                          color: kPrimaryColor,
                          fontFamily: AppFonts.inter,
                        ),
                        SizedBox(height: 7,),
                        MyText(
                          text: "Ali.Raza@gmail.com",
                          size: 12,
                          weight: FontWeight.w400,
                          color: kPrimaryColor,
                          fontFamily: AppFonts.inter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                      height: 26,
                      child: MyButton(
                          onTap: (){},
                          radius: 6,
                          buttonText: "View"))

                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: AppSizes.DEFAULT,
              decoration: ShapeDecoration(
                color: kWBGColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  buildStatsHistoryRow(
                    text: "Stats & history",
                    onTap: () {
                      Get.to(()=>HistoryScreen());
                    },
                  ),
                  Divider(),
                  buildStatsHistoryRow(
                    text: "Achievements",
                    onTap: () {
                      Get.to(()=>AchievementsScreen());
                    },
                  ),
                  Divider(),
                  buildStatsHistoryRow(
                    text: "Payment Method",
                    onTap: () {
                      Get.to(()=>PaymentScreen());
                    },
                  ),
                  Divider(),
                  buildStatsHistoryRow(
                    text: "Setting",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              padding: AppSizes.DEFAULT,
              decoration: ShapeDecoration(
                color: kWBGColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: MyText(
                text: "Help",
                size: 16,
                weight: FontWeight.w600,
                color: kPrimaryColor,
                fontFamily: AppFonts.inter,
              ),
            )


          ],
        ),
      ),
    );
  }
  Widget buildStatsHistoryRow({
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8), // add touch area
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: text, // now dynamic
              size: 16,
              weight: FontWeight.w600,
              color: kPrimaryColor,
              fontFamily: AppFonts.inter,
            ),
            CommonImageView(
              svgPath: Assets.svgArrowForward,
            ),
          ],
        ),
      ),
    );
  }
}
