import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  final List<Product> products = [
    Product(
      imagePath: Assets.imagesBall,
      title: "Shirt",
      description: "Lorem ipsum shirt dummy text",
      price: "Rs 250 PKR",
    ),
    Product(
      imagePath: Assets.imagesCap,
      title: "Cap",
      description: "Lorem ipsum shoes dummy text",
      price: "Rs 450 PKR",
    ),
    Product(
      imagePath: Assets.imagesPutter,
      title: "Putter",
      description: "Lorem ipsum cap dummy text",
      price: "Rs 150 PKR",
    ),
    Product(
      imagePath: Assets.imagesShirt,
      title: "Shirt",
      description: "Lorem ipsum bag dummy text",
      price: "Rs 800 PKR",
    ),
    Product(
      imagePath: Assets.imagesBall,
      title: "Shirt",
      description: "Lorem ipsum shirt dummy text",
      price: "Rs 250 PKR",
    ),
    Product(
      imagePath: Assets.imagesCap,
      title: "Cap",
      description: "Lorem ipsum shoes dummy text",
      price: "Rs 450 PKR",
    ),
    Product(
      imagePath: Assets.imagesPutter,
      title: "Putter",
      description: "Lorem ipsum cap dummy text",
      price: "Rs 150 PKR",
    ),
    Product(
      imagePath: Assets.imagesShirt,
      title: "Shirt",
      description: "Lorem ipsum bag dummy text",
      price: "Rs 800 PKR",
    ),
  ];

  final List<String> categories = ["All", "Putter","Cap","Ball","Shirt"];

  final categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Shop",
        actions: [
          CommonImageView(svgPath: Assets.svgNotification, height: 32),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(categories.length, (index) {
                  final isSelected = categoryController.selectedIndex.value == index;
                  return GestureDetector(
                    onTap: () => categoryController.selectCategory(index),
                    child: Container(
                      width: 62,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: isSelected ? kPrimaryColor : const Color(0xFFEFEFEF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Center(
                        child: MyText(
                          text: categories[index],
                          size: 14,
                          weight: FontWeight.w700,
                          color: isSelected ? kQuaternaryColor : kBlackColor,
                        ),
                      ),
                    ),
                  );
                }),
              ),),
              SizedBox(height: 20,),
              Row(
                children: [
                MyText(
                  text: "Most Popular",
                  size: 24,
                  weight: FontWeight.w700,
                  color: kBlackColor,
                  fontFamily: AppFonts.playFair,
                ),
                  Spacer(),
                  CommonImageView(svgPath: Assets.svgIcon,),
                  SizedBox(width: 3,),
                  MyText(
                    text: "Track Order",
                    size: 13,
                    weight: FontWeight.w600,
                    color: kBlackColor,
                  )
                ],
              ),
              SizedBox(height: 10,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.62,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    //width: 175,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF0F0F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CommonImageView(imagePath: product.imagePath,height: 150,),
                        MyText(
                          text: product.title,
                          size: 14,
                          weight: FontWeight.w700,
                          fontFamily: AppFonts.inter,
                          color: kPrimaryColor,
                        ),
                        const SizedBox(height: 8),
                        MyText(
                          text: product.description,
                          size: 10,
                          weight: FontWeight.w400,
                          fontFamily: AppFonts.inter,
                          color: kPrimaryColor,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: product.price,
                              size: 14,
                              weight: FontWeight.w800,
                              color: kBlackColor,
                            ),
                            CommonImageView(
                              imagePath: Assets.imagesCart1,
                              height: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String imagePath;
  final String title;
  final String description;
  final String price;

  Product({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
  });
}


class CategoryController extends GetxController {
  var selectedIndex = 0.obs;

  void selectCategory(int index) {
    selectedIndex.value = index;
  }
}