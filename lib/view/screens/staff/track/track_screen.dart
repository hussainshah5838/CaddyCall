import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/screens/staff/shift/shiftscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../generated/assets.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_text_widget.dart';

class TrackScreen extends StatelessWidget {
  TrackScreen({super.key});
  final RxBool isSwitched = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          SizedBox(width: 15),
          MyText(
            text: "Beverage Cart Tracker",
            size: 24,
            weight: FontWeight.w700,
            color: kBlackColor,
            fontFamily: AppFonts.playFair,
          ),
          Spacer(),
          CommonImageView(svgPath: Assets.svgNotification),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: AppSizes.HORIZONTAL,
          child: Column(
            children: [
              Stack(
                children: [
                  CommonImageView(imagePath: Assets.imagesT1),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        CommonImageView(
                          imagePath: Assets.imagesHugeiconsTruck,
                          height: 50,
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          height: 40,
                          width: 180,
                          child: MyButton(
                            radius: 6,
                            onTap: () {},
                            buttonText: "Beverage Cart Active",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFEBEBEA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x11171A1F),
                      blurRadius: 1,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Location Broadcast",
                            size: 24,
                            weight: FontWeight.w600,
                            color: kPrimaryColor,
                            fontFamily: AppFonts.playFair,
                          ),
                          Obx(
                            () => Switch(
                              value: isSwitched.value,
                              onChanged: (value) {
                                isSwitched.value = value; // reactive update
                              },
                              activeColor: kQuaternaryColor,
                              activeTrackColor: kPrimaryColor,
                              inactiveThumbColor: kPrimaryColor,
                              inactiveTrackColor: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5),
                    Padding(
                      padding: AppSizes.DEFAULT,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Current Location:',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 16,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w700,
                                    height: 1.50,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Holle 9- fairway east',
                                  style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 12,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w400,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          MyText(
                            text:
                                "Control your location sharing with golfers. Ensure broadcast is off when off-duty.",
                            size: 14,
                            weight: FontWeight.w400,
                            lineHeight: 1.43,
                            color: kGGCColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5),
                    Padding(
                      padding: AppSizes.DEFAULT,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            child: MyButton(
                              radius: 6,
                              onTap: () {},
                              buttonText: "Pause Tracking",
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 100,
                            child: MyBorderButton(
                              radius: 6,
                              borderColor: kTertiaryColor,
                              textColor: kTertiaryColor,
                              buttonText: "End Shift",
                              onTap: () {
                                Get.to(()=>ShiftScreen());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                padding: AppSizes.DEFAULT,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFEBEBEA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x11171A1F),
                      blurRadius: 1,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Recent Activity",
                      size: 24,
                      weight: FontWeight.w600,
                      fontFamily: AppFonts.playFair,
                      color: kBlackColor,
                    ),
                    SizedBox(height: 20),
                    buildNotificationRow(
                      time: "2 mins ago",
                      message: "Started broadcasting location.",
                      label: "System",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(thickness: 0.5),
                    ),
                    buildNotificationRow(
                      time: "5 mins ago",
                      message: "Entered Hole 9.",
                      label: "Location Update",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(thickness: 0.5),
                    ),
                    buildNotificationRow(
                      time: "15 mins ago",
                      message: "Battery saving mode activated.",
                      label: "Optimization",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationRow({
    required String time,
    required String message,
    required String label,
    String? iconPath,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonImageView(svgPath: iconPath ?? Assets.svgClockPurple),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: time,
                size: 14,
                weight: FontWeight.w400,
                color: kGGCColor,
              ),
              const SizedBox(height: 3),
              MyText(
                text: message,
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
            ],
          ),
        ),
        Container(
          height: 28,
          padding: EdgeInsets.symmetric(horizontal: 10),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFF7F7F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Center(
            child: MyText(
              text: label,
              size: 12,
              weight: FontWeight.w500,
              color: kText2Color,
            ),
          ),
        ),
      ],
    );
  }
}
