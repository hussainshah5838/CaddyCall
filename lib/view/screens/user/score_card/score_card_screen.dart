import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';



class  ScoreCardScreen extends StatelessWidget {
    ScoreCardScreen({super.key});

  final List<HoleData> myItems = [
    HoleData(holeLabel: "Hole", holeNumber: 1, parValue: 35, score: 4, parStatus: "Even Par"),
    HoleData(holeLabel: "Hole", holeNumber: 2, parValue: 36, score: 5, parStatus: "1 Over"),
    HoleData(holeLabel: "Hole", holeNumber: 3, parValue: 34, score: 3, parStatus: "1 Under"),
    HoleData(holeLabel: "Hole", holeNumber: 4, parValue: 35, score: 4, parStatus: "Even Par"),
    HoleData(holeLabel: "Hole", holeNumber: 5, parValue: 37, score: 6, parStatus: "2 Over"),
    HoleData(holeLabel: "Hole", holeNumber: 6, parValue: 33, score: 3, parStatus: "1 Under"),
    HoleData(holeLabel: "Hole", holeNumber: 1, parValue: 35, score: 4, parStatus: "Even Par"),
    HoleData(holeLabel: "Hole", holeNumber: 2, parValue: 36, score: 5, parStatus: "1 Over"),
    HoleData(holeLabel: "Hole", holeNumber: 3, parValue: 34, score: 3, parStatus: "1 Under"),
    HoleData(holeLabel: "Hole", holeNumber: 4, parValue: 35, score: 4, parStatus: "Even Par"),
    HoleData(holeLabel: "Hole", holeNumber: 5, parValue: 37, score: 6, parStatus: "2 Over"),
    HoleData(holeLabel: "Hole", holeNumber: 6, parValue: 33, score: 3, parStatus: "1 Under"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Score Card",
        actions: [
          CommonImageView(
            svgPath: Assets.svgNotification,
            height: 32,
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              Stack(
                children: [
                  CommonImageView(imagePath: Assets.imagesSc,),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Current Round",
                          size: 22,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                        SizedBox(height: 15,),
                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: CircularPercentIndicator(
                            radius: 50.0,

                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.7,
                            center: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MyText(
                                    text: "72",
                                      size: 21,
                                    weight: FontWeight.w500,
                                    color: kQuaternaryColor,
                                  ),
                                  MyText(
                                    text: "Par 72",
                                      size: 14,
                                    weight: FontWeight.w500,
                                    color: kQuaternaryColor,
                                  ),
                                ],
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Color(0xFF645A5A),
                            progressColor: kQuaternaryColor,
                                                 ),
                         ),
                        SizedBox(height: 15,),
                        Row(
                          spacing: 15,
                          children: [
                          Column(
                            children: [
                              MyText(
                                text: "0",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kQuaternaryColor,
                              ),
                              SizedBox(height: 5,),
                              MyText(
                                text: "Total score",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kQuaternaryColor,
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              MyText(
                                text: "1",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kQuaternaryColor,
                              ),
                              SizedBox(height: 5,),
                              MyText(
                                text: "Current hole",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kQuaternaryColor,
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              MyText(
                                text: "E",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kQuaternaryColor,
                              ),
                              SizedBox(height: 5,),
                              MyText(
                                text: "To Par",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kQuaternaryColor,
                              ),

                            ],
                          ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
                decoration: ShapeDecoration(
                  color: const Color(0x19013221),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 25,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyText(
                          text: "Front Nine Summary",
                          size: 13,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                        SizedBox(width: 8,),
                        CommonImageView(svgPath: Assets.svgHole,),
                        Spacer(),
                        MyText(
                          text: "Par 33",
                          size: 15,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        MyText(
                          text: "33 Strokes",
                          size: 16,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                        Spacer(),
                        MyText(
                          text: "Even",
                          size: 13,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Full Score",
                    size: 24,
                    weight: FontWeight.w600,
                    fontFamily: AppFonts.playFair,
                    color: kBlackColor,
                  ),
                  MyText(
                    text: "History",
                    size: 12,
                    weight: FontWeight.w600,
                    fontFamily: AppFonts.playFair,
                    color: kBlackColor,
                  ),
                ],
              ),
              SizedBox(height: 8,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemCount: myItems.length, // your data list length
                itemBuilder: (context, index) {
                  final item = myItems[index];
                  return Container(
                    width: 107,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          spacing: 5,
                          children: [
                            CommonImageView(svgPath: Assets.svgHole, height: 15),
                            MyText(text: item.holeLabel, size: 11, weight: FontWeight.w400, color: kText2Color),
                            MyText(text: item.holeNumber.toString(), size: 14, weight: FontWeight.w400, color: kBlackColor),
                            MyText(text: "Par", size: 11, weight: FontWeight.w400, color: kText2Color),
                            MyText(text: item.parValue.toString(), size: 14, weight: FontWeight.w400, color: kBlackColor),
                          ],
                        ),
                        Column(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              spacing: 6,
                              children: [
                                CommonImageView(imagePath: Assets.imagesRemove, height: 12),
                                MyText(text: item.score.toString(), size: 22, weight: FontWeight.w600, color: kPrimaryColor),
                                CommonImageView(imagePath: Assets.imagesAdd, height: 12),
                              ],
                            ),
                            MyText(text: item.parStatus, size: 12, weight: FontWeight.w400, color: kText2Color),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )


            ],
          ),
        ),
      ),
    );
  }
}




class HoleData {
  final String holeLabel;
  final int holeNumber;
  final int parValue;
  final int score;
  final String parStatus;

  HoleData({
    required this.holeLabel,
    required this.holeNumber,
    required this.parValue,
    required this.score,
    required this.parStatus,
  });
}