import 'package:caddy_call/view/screens/user/user_auth/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_sizes.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_button.dart';
import '../../../custom/my_text_widget.dart';
import '../../../custom/my_textfeild.dart';



class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Forgot Password",
      ),
      bottomNavigationBar:  SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: MyButton(onTap: (){
            Get.to(()=>VerificationCodeScreen());
          }, buttonText: "Send"),
        ),
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
              MyText(
                text: "Enter username in which you get the verification code",
                size: 14,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              SizedBox(height: 20,),
              MyTextField(
                label: "Email Address",
                hint: "example@gmail.com",
              ),



            ],
          ),
        ),
      ),
    );
  }
}
