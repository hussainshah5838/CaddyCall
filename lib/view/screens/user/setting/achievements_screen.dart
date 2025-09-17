import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';



class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Achievements",
        actions: [
          CommonImageView(svgPath: Assets.svgNotification, height: 32),
          SizedBox(width: 10),
        ],

      ),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Your Golf Journey",
              size: 24,
              weight: FontWeight.w600,
              fontFamily: AppFonts.playFair,
              color: kPrimaryColor,
            ),
            SizedBox(height: 40,),
            buildCustomCard(
              imagePath: Assets.imagesF1,
              title: "First Birdie",
              subtitle: "Score your first birdie",
              onTap: () {
                print("First Birdie tapped");
              },
            ),
            const SizedBox(height: 10),
            buildCustomCard(
              imagePath: Assets.imagesF2,
              title: "Eagle Eye",
              subtitle: "Score an eagle",
              onTap: () {
                print("First Birdie tapped");
              },
            ),
            const SizedBox(height: 10),
            buildCustomCard(
              imagePath: Assets.imagesF3,
              title: "10 Round",
              subtitle: "Play 10 rounds of golf",
              onTap: () {},
            ),
            const SizedBox(height: 10),
            buildCustomCard(
              imagePath: Assets.imagesF4,
              title: "10 Round",
              subtitle: "Play 10 rounds of golf",
              onTap: () {},
            ),


          ],
        ),
      ),
    );
  }

  Widget buildCustomCard({
    required String imagePath,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: kQuaternaryColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFE3E3E3),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: [
            CommonImageView(
              imagePath: imagePath,
              height: 50,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: title,
                    size: 14,
                    weight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 6),
                  MyText(
                    text: subtitle,
                    size: 14,
                    weight: FontWeight.w400,
                    color: kText2Color,
                  ),
                ],
              ),
            ),
            CommonImageView(svgPath: Assets.svgCharmCircleTick),
          ],
        ),
      ),
    );
  }

}
