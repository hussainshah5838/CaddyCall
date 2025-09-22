import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_textfeild.dart';
import 'package:caddy_call/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:caddy_call/view/screens/user/user_auth/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../controller/select_role_controller/select_role_controller.dart';
import '../../../../generated/assets.dart';
import '../../../custom/custom_checkbox_widget.dart';
import '../../../custom/my_text_widget.dart';
import '../../bottom_nav_bar/staff_bottom_nav_bar.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final roleController = Get.find<SelectRoleController>();
    return Scaffold(
      appBar: CustomAppBar(
        title: "Sign in",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              CommonImageView(
                imagePath: Assets.imagesG1,
                height: 180,
              ),
              SizedBox(height: 20,),
              MyTextField(
                label: "Email Address",
                hint: "example@gmail.com",
              ),
              //SizedBox(height: 10,),
              MyTextField(
                label: "Password",
                hint: "********",
                suffix: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CommonImageView(
                    svgPath: Assets.svgEye,
                  ),
                ),
              ),
              //SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    height: 25,
                    child: TermsCheckbox(
                      text: "Remember me",
                      onChanged: (val){},
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>ForgetPasswordScreen());
                    },
                    child: MyText(
                      text: "Forgot Password?",
                      size: 14,
                      weight: FontWeight.w600,
                      color: kTertiaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              MyButton(
                  onTap: (){
                    if (roleController.selectedRole.value == "User") {
                      Get.to(() =>  BottomNavBar());
                    } else if (roleController.selectedRole.value == "Staff") {
                      Get.to(() => StaffBottomNavBar());
                    }

              }, buttonText: "Sign In"),
              SizedBox(height: 30,),
              MyText(
                text: "Sign in Through",
                size: 14,
                weight: FontWeight.w400,
                color: kBlackColor,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonImageView(imagePath: Assets.imagesGoogle,height: 80,),
                  CommonImageView(imagePath: Assets.imagesApple,height: 80,),
                  CommonImageView(imagePath: Assets.imagesFacebook,height: 80,),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
