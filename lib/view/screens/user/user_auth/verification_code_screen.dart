import 'package:caddy_call/view/screens/user/user_auth/new_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../config/constants/app_sizes.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_animated_row.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_button.dart';
import '../../../custom/my_text_widget.dart';
import '../../../custom/my_textfeild.dart';
import 'forget_password_screen.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Forgot Password"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: MyButton(onTap: () {
            Get.to(()=>NewPasswordScreen());
          }, buttonText: "Send"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              CommonImageView(imagePath: Assets.imagesG1, height: 180),

              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  text:
                      "Enter verification code that you received at hel***@gmail.com",
                  size: 14,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
              SizedBox(height: 20),
              AnimatedRow(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    length: 4,
                    defaultPinTheme: PinTheme(
                      width: 51,
                      height: 52,
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.inter,
                        color: kPrimaryColor,
                      ),
                      decoration: BoxDecoration(
                        color: kQuaternaryColor, // Center color
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: kPrimaryColor, width: 1),
                      ),
                      //margin: EdgeInsets.only(left: 8),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 51,
                      height: 52,
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.inter,
                        color: kPrimaryColor,
                      ),
                      decoration: BoxDecoration(
                        color: kQuaternaryColor,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: kPrimaryColor, width: 1),
                      ),
                      // margin: EdgeInsets.only(left: 8),
                    ),
                    submittedPinTheme: PinTheme(
                      width: 51,
                      height: 52,
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                      ),
                      decoration: BoxDecoration(
                        color: kQuaternaryColor,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: kPrimaryColor, width: 1),
                      ),
                      // margin: EdgeInsets.only(left: 8),
                    ),
                    onCompleted: (pin) {},
                    preFilledWidget: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.inter,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t receive the code?',
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 14,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w400,
                        height: 2.29,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w400,
                        height: 2.29,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w700,
                        height: 2.29,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
