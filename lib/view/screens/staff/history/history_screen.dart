import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../config/constants/app_sizes.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_button.dart';
import '../../../custom/my_text_widget.dart';
import '../../../custom/my_textfeild.dart';
import '../bevCart/bev_cart_screen.dart';



class StaffHistoryScreen extends StatelessWidget {
   StaffHistoryScreen({super.key});

  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "History",
        actions: [
          CommonImageView(svgPath: Assets.svgNotification),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            Padding(
              padding: AppSizes.DEFAULT,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Orders Queue",
                    size: 24,
                    weight: FontWeight.w700,
                    color: kBlackColor,
                    fontFamily: AppFonts.playFair,
                  ),
                  SizedBox(height: 15),
                  OrderStatusChips(),
                  SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFEBEBEA),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19171A1F),
                                blurRadius: 25,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: AppSizes.DEFAULT,
                                child: Row(
                                  children: [
                                    CommonImageView(svgPath: Assets.svgReceiptText),
                                    SizedBox(width: 5),
                                    MyText(
                                      text: "Hole 9 - Green",
                                      size: 16,
                                      weight: FontWeight.w600,
                                      color: kBlackColor,
                                    ),
                                    Spacer(),
                                    CommonImageView(svgPath: Assets.svgClock1),
                                    SizedBox(width: 5),
                                    MyText(
                                      text: "2 mins ago",
                                      size: 14,
                                      weight: FontWeight.w400,
                                      color: kGGCColor,
                                    ),
                                  ],
                                ),
                              ),
                              Divider(thickness: 0.5),
                              Padding(
                                padding: AppSizes.DEFAULT,
                                child: Column(
                                  children: [
                                    buildOrderItemRow(2, "Pizza", Assets.svgUtensils),
                                    buildOrderItemRow(1, "Soda", Assets.svgShoppingCart),
                                    MyTextField(
                                        borderColor: Colors.transparent,
                                        filledColor: Color(0xFFF7F7F7),
                                        hint: "Extra mustard, no ice.",
                                        prefix: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: CommonImageView(
                                            svgPath: Assets.svgTag,
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Divider(thickness: 0.5),
                              if(index % 2 == 0)
                              Padding(
                                padding: AppSizes.DEFAULT,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CommonImageView(svgPath: Assets.svgTickgreen,),
                                    SizedBox(width: 5,),
                                    MyText(
                                      text: "Order has been delivered",
                                      size: 14,
                                      weight: FontWeight.w600,
                                      color: kPrimaryColor,
                                    )
                                  ],
                                ),
                              ),
                              if(index % 2 != 0)
                              Padding(
                                padding: AppSizes.DEFAULT,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CommonImageView(svgPath: Assets.svgYellowtick,),
                                    SizedBox(width: 5,),
                                    MyText(
                                      text: "Order has been delivered",
                                      size: 14,
                                      weight: FontWeight.w600,
                                      color: kTertiaryColor,
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: kTertiaryColor,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                      ),
                                      child: MyText(
                                        text: "View",
                                        size: 14,
                                        weight: FontWeight.w400,
                                        color: kQuaternaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderItemRow(int qty, String name, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          MyText(
            text: "${qty}x",
            size: 16,
            weight: FontWeight.w700,
            color: kPrimaryColor,
          ),
          const SizedBox(width: 8),
          MyText(
            text: name,
            size: 12,
            weight: FontWeight.w400,
            color: kBlackColor,
          ),
          const Spacer(),
          CommonImageView(svgPath: imagePath),
        ],
      ),
    );
  }
}
