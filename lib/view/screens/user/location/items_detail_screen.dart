import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:caddy_call/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/custom_dropdown.dart';

class ItemsDetailScreen extends StatelessWidget {
  ItemsDetailScreen({super.key});

  final List<Map<String, String>> items = [
    {"icon": Assets.svgMynauiPizza, "text": "Fresh Salad"},
    {"icon": Assets.svgMynauiPizza, "text": "Fries"},
    {"icon": Assets.svgMynauiPizza, "text": "Drinks"},
    {"icon": Assets.svgMynauiPizza, "text": "Fresh Salad"},
    {"icon": Assets.svgMynauiPizza, "text": "Cheese Pizza"},
  ];

  final RxString selectedValue = "Select Item".obs;
  final List<String> items1 = ["Pizza", "Burger", "Pasta", "Salad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CommonImageView(imagePath: Assets.imagesBg),
                SafeArea(
                  child: Positioned(
                    child:  Padding(
                      padding: AppSizes.DEFAULT,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Get.back(),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: CommonImageView(
                                svgPath: Assets.svgWhiteIconBack,
                              ),
                            ),
                          ),
                          MyText(
                            text: "Item Details",
                            size: 22,
                            weight: FontWeight.w700,
                            color: kQuaternaryColor,
                            fontFamily: AppFonts.playFair,
                          ),
                          CommonImageView(svgPath: Assets.svgWhiteBell, height: 32),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: -50,
                  child: Container(
                    width: 319,
                    height: 106,
                    padding: EdgeInsets.all(15),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 14,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: "Course Classic burger",
                              size: 20,
                              weight: FontWeight.w700,
                              fontFamily: AppFonts.playFair,
                              color: kPrimaryColor,
                            ),
                            MyText(
                              text: "\$43",
                              size: 20,
                              weight: FontWeight.w700,
                              color: kPrimaryColor,
                            ),
                          ],
                        ),
                        SizedBox(height: 3),
                        MyText(
                          text: "Desserts",
                          size: 12,
                          weight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            CommonImageView(svgPath: Assets.svgStar),
                            SizedBox(width: 6),
                            MyText(
                              text: "4",
                              size: 14,
                              weight: FontWeight.w700,
                              color: Color(0xFFFF7F23),
                            ),
                            MyText(
                              text: "/5",
                              size: 14,
                              weight: FontWeight.w700,
                              color: Color(0xFFC7C7C7),
                            ),
                            Spacer(),
                            MyText(
                              text: "Servings for 2 people",
                              size: 14,
                              weight: FontWeight.w500,
                              color: Color(0xFFC7C7C7),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: AppSizes.DEFAULT,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  MyText(
                    text:
                        "Our signature Course Classic Burger features a juicy all-beef patty,"
                        " melted cheddar cheese, crisp lettuce, fresh tomato, and our special house sauce, "
                        "all nestled in a toasted brioche bun. Served with a side of golden fries.",
                    size: 14,
                    weight: FontWeight.w500,
                    color: kText2Color,
                    letterSpacing: -0.33,
                    lineHeight: 1.50,
                  ),
                  SizedBox(height: 14),
                  Row(
                    spacing: 10,
                    children: [
                      Container(
                        width: 100,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEFF0F0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFDFDFDF),
                            ),
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Center(
                          child: MyText(
                            text: "558 Calories",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEFF0F0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFDFDFDF),
                            ),
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Center(
                          child: MyText(
                            text: "35g Protein",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEFF0F0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFDFDFDF),
                            ),
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Center(
                          child: MyText(
                            text: "30g Fat",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Divider(),
                  SizedBox(height: 14),
                  MyText(
                    text: "Ingredients",
                    size: 20,
                    weight: FontWeight.w700,
                    color: kBlackColor,
                    fontFamily: AppFonts.playFair,
                  ),
                  SizedBox(height: 20),
                  Obx(
                    () => CustomDropDown(
                      hint: "Select Item",
                      labelText: "Select Patty",
                      items: items1,
                      selectedValue: selectedValue.value,
                      onChanged: (value) {
                        selectedValue.value = value; // ✅ updates automatically
                        print("Selected: $value");
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 12, // horizontal gap
                    runSpacing: 8, // vertical gap
                    children: items.map((item) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonImageView(svgPath: item["icon"]!),
                          const SizedBox(width: 5),
                          MyText(
                            text: item["text"]!,
                            size: 14,
                            weight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    maxLines: 3,
                    filledColor: const Color(0xFFFCFCFC),
                    label: "Notes",
                    hint: "e.g no pickles extra onion",
                    borderColor: Colors.transparent,
                  ),
                  MyTextField(
                    maxLines: 3,
                    filledColor: const Color(0xFFFCFCFC),
                    label: "Special Instruction",
                    hint: "Write Here",
                    borderColor: Colors.transparent,
                  ),
                  SizedBox(height: 20),
                  MyText(
                    text: "Addons (Oprional)",
                    size: 20,
                    weight: FontWeight.w700,
                    color: kBlackColor,
                    fontFamily: AppFonts.playFair,
                  ),
                  SizedBox(height: 14),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFD3D3D3),
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Soft Drinks",
                          size: 14,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),

                        buildProductRow(
                          imagePath: Assets.imagesPepsi,
                          text1: "7up",
                          text2: "Rs: 90 PKR",
                          onTap: () {},
                        ),
                        Divider(),
                        buildProductRow(
                          imagePath: Assets.imagesPepsi,
                          text1: "7up",
                          text2: "Rs: 90 PKR",
                          onTap: () {},
                        ),
                        Divider(),
                        buildProductRow(
                          imagePath: Assets.imagesPepsi,
                          text1: "Mountain Dew",
                          text2: "Rs: 90 PKR",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFD3D3D3),
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Fries",
                          size: 14,
                          weight: FontWeight.w600,
                          color: kBlackColor,
                        ),

                        buildProductRow(
                          imagePath: Assets.imagesFries,
                          text1: "Frizza",
                          text2: "Rs: 90 PKR",
                          onTap: () {},
                        ),
                        Divider(),
                        buildProductRow(
                          imagePath: Assets.imagesFries,
                          text1: "Plain Fries",
                          text2: "Rs: 90 PKR",
                          onTap: () {},
                        ),
                        Divider(),
                        buildProductRow(
                          imagePath: Assets.imagesFries,
                          text1: "Cheeky Fries",
                          text2: "Rs: 90 PKR",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  MyButton(onTap: () {}, buttonText: "Add to cart"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductRow({
    required String imagePath,
    required String text1,
    required String text2,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: AppSizes.VERTICAL,
      child: Row(
        children: [
          CommonImageView(imagePath: imagePath, height: 60),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: text1,
                  size: 16,
                  weight: FontWeight.w700,
                  color: kBlackColor,
                ),
                const SizedBox(height: 8),
                MyText(
                  text: text2,
                  size: 16,
                  weight: FontWeight.w700,
                  color: kText2Color,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: CommonImageView(imagePath: Assets.imagesAdd1, height: 20),
          ),
        ],
      ),
    );
  }
}
