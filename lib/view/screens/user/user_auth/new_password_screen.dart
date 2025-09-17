import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_sizes.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_button.dart';
import '../../../custom/my_textfeild.dart';



class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "New Password",
      ),
      bottomNavigationBar:  SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: MyButton(onTap: (){}, buttonText: "Send"),
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
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  text: "Enter New Password",
                  size: 14,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
              SizedBox(height: 20,),
              MyTextField(
                label: "Password",
                hint: "*********",
              ),
              MyTextField(
                label: "Confirm Password",
                hint: "*********",
              ),



            ],
          ),
        ),
      ),
    );
  }
}
