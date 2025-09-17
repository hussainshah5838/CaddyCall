import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../config/constants/app_sizes.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/my_text_widget.dart';



class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Payment",
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
              text: "Select Any",
              size: 24,
              weight: FontWeight.w600,
              fontFamily: AppFonts.playFair,
              color: kPrimaryColor,
            ),
            SizedBox(height: 40,),
            buildCustomCard(
              imagePath: Assets.imagesApple2,
              title: "Apple ID",
              subtitle: "Balance PKR 26,000",
              onTap: () {
                print("First Birdie tapped");
              },
            ),
            const SizedBox(height: 10),
            buildCustomCard(
              imagePath: Assets.imagesMaster,
              title: "Master Card",
              subtitle: "*****6544",
              onTap: () {
                print("First Birdie tapped");
              },
            ),
            const SizedBox(height: 10),
            buildCustomCard(
              imagePath: Assets.imagesVisa,
              title: "Visa",
              subtitle: "****567",
              onTap: () {
                print("First Birdie tapped");
              },
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: (){},
              child: MyText(
                text: "Add Payment Method",
                size: 14,
                weight: FontWeight.w600,
                color: kBlueColor,
              ),
            )

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
