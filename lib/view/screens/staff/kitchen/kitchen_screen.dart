import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../config/constants/app_sizes.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';
import '../../../custom/my_button.dart';
import '../../../custom/my_text_widget.dart';
import '../../../custom/my_textfeild.dart';



class KitchenScreen extends StatelessWidget {
   KitchenScreen({super.key});
  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          SizedBox(width: 15),
          MyText(
            text: "Kitchen",
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
        child: Column(
          children: [
            Stack(
              children: [
                CommonImageView(imagePath: Assets.imagesM1),
                Padding(
                  padding: AppSizes.HORIZONTAL,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '👨‍🍳 Cooking in ',
                              style: TextStyle(
                                color: kQuaternaryColor,
                                fontSize: 15,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.33,
                              ),
                            ),
                            TextSpan(
                              text: 'progress!',
                              style: TextStyle(
                                color:kTertiaryColor,
                                fontSize: 20,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.33,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8,),
                      MyText(
                        text: "Our chefs are already on it. Great food\ntakes time — almost there!",
                        size: 12,
                        weight: FontWeight.w400,
                        color: kText3Color,
                        letterSpacing: -0.33,
                        lineHeight: 1.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),

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
                                    Container(
                                      width: 77,
                                      height: 27,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0x19D5BC6A),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: const Color(0xFFD5BC6A),
                                          ),
                                          borderRadius: BorderRadius.circular(96),
                                        ),
                                      ),
                                      child: Center(
                                        child: MyText(
                                          text: "Pending",
                                          size: 14,
                                          weight: FontWeight.w400,
                                        ),
                                      ),
                                    )
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
                                    Row(
                                      children: [
                                        Container(
                                          width: 62,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: const Color(0x190088FF),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(color: Colors.white),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Center(
                                            child: MyText(
                                              text: "New",
                                              size: 12,
                                              weight: FontWeight.w600,
                                              color: Color(0xFF0088FF),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        CommonImageView(svgPath: Assets.svgClockBule,),
                                        SizedBox(width: 5,),
                                        MyText(
                                          text: "02:14",
                                          size: 14,
                                          weight: FontWeight.w600,
                                          color: Color(0xFF0088FF),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Divider(thickness: 0.5),
                              Padding(
                                padding: AppSizes.DEFAULT,
                                child: MyButton(
                                  radius: 6,
                                  onTap: () {},
                                  buttonText: "Accept Order",
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



class OrderStatusChips extends StatelessWidget {
  OrderStatusChips({super.key});

  final RxInt selectedIndex = 0.obs;

  // 🔹 List of status options
  final List<Map<String, String>> statusList = [
    {"title": "New", "icon": Assets.svgBellRing},
    {"title": "In Progress", "icon": Assets.svgBellRing},
    {"title": "Delivered", "icon": Assets.svgCircleCheckBig}, // you can add more
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Wrap(
        spacing: 5,
        children: List.generate(
          statusList.length,
              (index) => _buildChip(
            title: statusList[index]["title"]!,
            iconPath: statusList[index]["icon"]!,
            isSelected: selectedIndex.value == index,
            onTap: () => selectedIndex.value = index,
          ),
        ),
      ),
    );
  }

  // 🔹 Reusable chip widget
  Widget _buildChip({
    required String title,
    required String iconPath,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        decoration: ShapeDecoration(
          color: isSelected ? const Color(0xFFF7F7F7) : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isSelected
                  ? Colors.black.withValues(alpha: 0)
                  : const Color(0xFFEFEFEF),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(19),
          ),
          shadows: isSelected
              ? [
            const BoxShadow(
              color: Color(0x11171A1F),
              blurRadius: 1,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ]
              : [],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonImageView(svgPath: iconPath),
            const SizedBox(width: 8),
            MyText(
              text: title,
              size: 12,
              weight: FontWeight.w500,
              color: kBlackColor,
            ),
          ],
        ),
      ),
    );
  }
}