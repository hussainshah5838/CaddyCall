import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_text_widget.dart';



class ShiftScreen extends StatelessWidget {
  const ShiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          SizedBox(width: 15),
          MyText(
            text: "Shift Management",
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
          padding: AppSizes.DEFAULT,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 276,
                decoration: ShapeDecoration(
                  color: kPrimaryColor.withOpacity(0.10),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: kPrimaryColor.withOpacity(0.10),),
                  ),
                ),
                child: Padding(
                  padding: AppSizes.DEFAULT,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Off Shift",
                            size: 20,
                            weight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                          Container(
                            width: 82,
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF7F7F7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Center(
                              child: MyText(
                                text: "INACTIVE",
                                size: 12,
                                weight: FontWeight.w700,
                                color: Color(0xFF4CAE4F),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      MyText(
                        text: "00h 00m 00s",
                        size: 60,
                        weight: FontWeight.w800,
                        color: kBlackColor,
                      ),
                      SizedBox(height: 15,),
                      MyText(
                        text: "No active shift",
                        size: 14,
                        weight: FontWeight.w400,
                        color: kGGCColor,
                      ),
                      SizedBox(height: 15,),
                      MyText(
                        text: "Your current status is displayed above.",
                        size: 12,
                        weight: FontWeight.w400,
                        color: kGGCColor,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 56,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black.withValues(alpha: 0),
                    ),
                    borderRadius: BorderRadius.circular(12),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImageView(svgPath: Assets.svgPlay,),
                    SizedBox(width: 10,),
                    MyText(
                      text: "Start Shift",
                      size: 18,
                      weight: FontWeight.w500,
                      color: kQuaternaryColor,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              MyText(
                text: "Activity Log",
                size: 24,
                weight: FontWeight.w600,
                fontFamily: AppFonts.playFair,
                color: kBlackColor,
              ),
              SizedBox(height: 20,),
              Container(
                decoration: ShapeDecoration(
                  color: kQuaternaryColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFFEBEBEA),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x11171A1F),
                      blurRadius: 1,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: AppSizes.DEFAULT,
                      child: Row(
                        children: [
                          CommonImageView(svgPath:Assets.svgShiftstart ,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Shift Started",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                              SizedBox(height: 8,),
                              MyText(
                                text: "Yesterday at 08:30 AM",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kGGCColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5,),
                    Padding(
                      padding: AppSizes.DEFAULT,
                      child: Row(
                        children: [
                          CommonImageView(svgPath:Assets.svgEndshift,),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "Shift Ended",
                                  size: 14,
                                  weight: FontWeight.w600,
                                  color: kBlackColor,
                                ),
                                SizedBox(height: 8,),
                                MyText(
                                  text: "Yesterday at 05:00 PM",
                                  size: 12,
                                  weight: FontWeight.w400,
                                  color: kGGCColor,
                                )
                              ],
                            ),
                          ),
                          MyText(
                            text: "08h 30m 00s",
                            size: 14,
                            weight: FontWeight.w600,
                            color: kGGCColor,
                          )
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5,),
                    Padding(
                      padding: AppSizes.DEFAULT,
                      child: Row(
                        children: [
                          CommonImageView(svgPath:Assets.svgBreakstart,),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Break Started",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                              SizedBox(height: 8,),
                              MyText(
                                text: "Yesterday at 01:00 PM",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kGGCColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              MyText(
                text: "Our Partners",
                size: 24,
                weight: FontWeight.w600,
                fontFamily: AppFonts.playFair,
                color: kBlackColor,
              ),
              SizedBox(height: 10,),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: List.generate(4, (index) {
                  return Container(
                    padding: AppSizes.DEFAULT,
                    decoration: ShapeDecoration(
                      color: kQuaternaryColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFEBEBEA),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x11171A1F),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonImageView(
                          svgPath: Assets.svgGlobexInc,
                        ),
                        SizedBox(height: 15),
                        MyText(
                          text: "Globex Inc.",
                          size: 14,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ],
                    ),
                  );
                }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
