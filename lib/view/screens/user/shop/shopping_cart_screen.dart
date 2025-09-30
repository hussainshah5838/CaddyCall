import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:caddy_call/view/screens/user/shop/track_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Cart",
        actions: [
          CommonImageView(svgPath: Assets.svgNotification, height: 32),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            Row(
              children: [
                MyText(
                  text: "Delivery time",
                  size: 24,
                  weight: FontWeight.w700,
                  fontFamily: AppFonts.playFair,
                  color: kPrimaryColor,
                ),
                Spacer(),
                MyText(
                  text: "Today 11:00 AM",
                  size: 13,
                  weight: FontWeight.w400,
                  color: kText3Color,
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 12, color: kText3Color),
              ],
            ),
            SizedBox(height: 13),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: const Color(0x19013221),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: AppSizes.DEFAULT,
                    child: Row(
                      children: [
                        CommonImageView(svgPath: Assets.svgPinLocation),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Wisteria st 30, Houston, TX",
                                size: 15,
                                weight: FontWeight.w600,
                                color: kPrimaryColor,
                              ),
                              SizedBox(height: 5),
                              MyText(
                                text: "Mr. Smith +555 9867 4321",
                                size: 13,
                                weight: FontWeight.w400,
                                color: kText2Color,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>TrackOrderScreen());
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: kQuaternaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: AppSizes.DEFAULT,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          ListView.builder(
                            itemCount: 3, // showing 3 items
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 20,
                                ), // spacing between items
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            CommonImageView(
                                              imagePath: Assets.imagesBallGB,
                                              height: 60,
                                            ),
                                            Positioned(
                                              right: 0,
                                              top: -10,
                                              child: Opacity(
                                                opacity: 0.75,
                                                child: Container(
                                                  width: 25,
                                                  height: 25,
                                                  decoration: ShapeDecoration(
                                                    color: kPrimaryColor,
                                                    shape: OvalBorder(),
                                                  ),
                                                  child: Center(
                                                    child: MyText(
                                                      text:
                                                          "${index + 1}", // different count per item
                                                      size: 13,
                                                      weight: FontWeight.w600,
                                                      color: kQuaternaryColor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6),
                                        MyText(
                                          text: "Quantity",
                                          size: 14,
                                          weight: FontWeight.w700,
                                          color: kText2Color,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          MyText(
                                            text: "Beef Burger",
                                            size: 14,
                                            weight: FontWeight.w700,
                                            color: kPrimaryColor,
                                          ),
                                          SizedBox(height: 8),
                                          MyText(
                                            text: "250g - Size L",
                                            size: 13,
                                            weight: FontWeight.w400,
                                            color: kText2Color,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '\$',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 17,
                                                  fontFamily: AppFonts.inter,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '25',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 21,
                                                  fontFamily: AppFonts.inter,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            CommonImageView(
                                              imagePath: Assets.imagesAdd1,
                                              height: 20,
                                            ),
                                            SizedBox(width: 8),
                                            CommonImageView(
                                              imagePath: Assets.imagesRemove1,
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Payment method",
                                size: 15,
                                weight: FontWeight.w600,
                                color: kPrimaryColor,
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  CommonImageView(svgPath: Assets.svgMastercardLogo),
                                  SizedBox(width: 10,),
                                  MyText(
                                    text: "**** **** **** 3095",
                                    size: 15,
                                    weight: FontWeight.w400,
                                    color: kText4Color,
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 79.97,
                                    height: 32,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 2,
                                          color: kBorderColor,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "Change",
                                        size: 13,
                                        weight: FontWeight.w400,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 33,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        MyText(
                                          text: "Total:",
                                          size: 17,
                                          weight: FontWeight.w700,
                                          color: kPrimaryColor,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '\$',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 19,
                                                  fontFamily: AppFonts.inter,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '37,50',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 23,
                                                  fontFamily: AppFonts.inter,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),

                                    MyText(
                                      text: "4 items",
                                      size: 15,
                                      weight: FontWeight.w400,
                                      color: kText4Color,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width:130,
                                  child: MyButton(onTap: (){}, buttonText: "Pay")),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
