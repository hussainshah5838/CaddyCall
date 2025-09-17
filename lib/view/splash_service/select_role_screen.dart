import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';
import '../../generated/assets.dart';



class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            SizedBox(height: 100,),
            CommonImageView(
              imagePath: Assets.imagesLogo1,
              height: 75,
            ),
            SizedBox(height: 110,),
            MyText(
              text: "Select your Role",
              size: 38,
              weight: FontWeight.w400,
              fontFamily: AppFonts.jaini,
              color: kPrimaryColor,
            ),
            SizedBox(height: 90,),
            MyButton(onTap: (){}, buttonText: "User"),
            SizedBox(height: 20,),
            MyBorderButton(buttonText: "Staff", onTap: (){},),
          ],
        ),
      ),
    );
  }
}
