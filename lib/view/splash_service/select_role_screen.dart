import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:caddy_call/view/screens/user/user_auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../config/constants/app_colors.dart';
import '../../controller/select_role_controller/select_role_controller.dart';
import '../../generated/assets.dart';



class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SelectRoleController());
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
              fontFamily: AppFonts.playFair,
              color: kPrimaryColor,
            ),
            SizedBox(height: 90,),
            MyButton(
              onTap: () {
                controller.setRole("User");
                Get.to(() => LoginScreen());
              },
              buttonText: "User",
            ),

            const SizedBox(height: 20),

            MyBorderButton(
              onTap: () {
                controller.setRole("Staff");
                Get.to(() => LoginScreen());
              },
              buttonText: "Staff",
            ),


          ],
        ),
      ),
    );
  }
}
