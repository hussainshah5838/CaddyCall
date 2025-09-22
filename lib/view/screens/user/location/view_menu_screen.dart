import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:caddy_call/view/screens/user/location/items_detail_screen.dart';
import 'package:caddy_call/view/screens/user/shop/shopping_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';




class ViewMenuScreen extends StatelessWidget {
  const ViewMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Food and Drinks",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBox(
                    svgPath: Assets.imagesPp1,
                    text: "Pizza",
                    onTap: () {},
                  ),
                  IconBox(
                    svgPath: Assets.imagesPp2,
                    text: "Chicken",
                    onTap: () {},
                  ),
                  IconBox(
                    svgPath: Assets.imagesPp3,
                    text: "Burger",
                    onTap: () {},
                  ),
                  IconBox(
                    svgPath: Assets.imagesPp4,
                    text: "Spagethi",
                    onTap: () {},
                  ),
                  IconBox(
                    svgPath: Assets.imagesPp5,
                    text: "More",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 30,),
              MyText(
                  text: "Most Popular",
                size: 24,
                weight: FontWeight.w700,
                color: kBlackColor,
                fontFamily: AppFonts.playFair,
              ),
              SizedBox(height: 8,),
              ProductGrid(),


            ],
          ),
        ),
      ),
    );
  }
}





class IconBox extends StatelessWidget {
  final String svgPath;
  final String text;
  final Color color;
  final double borderRadius;
  final VoidCallback? onTap;

  const IconBox({
    super.key,
    required this.svgPath,
    required this.text,
    this.color = kPrimaryColor,
    this.borderRadius = 15.25,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonImageView(imagePath: svgPath, height: 55),
        SizedBox(height: 8),
        MyText(
          text: text,
          size: 13,
          weight: FontWeight.w700,
          color: kBlackColor,
        ),
      ],
    );
  }
}






class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      //padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,         // 2 items per row
        crossAxisSpacing: 10,      // spacing between columns
        mainAxisSpacing: 10,       // spacing between rows
        childAspectRatio: 0.64,     // adjust height/width ratio
      ),
      itemCount: 10, // replace with your products.length
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.to(()=>ItemsDetailScreen());
              },
              child: CommonImageView(
                imagePath: Assets.imagesP1,
                radius: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Title",
                    size: 14,
                    weight: FontWeight.w700,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(height: 8),
                  MyText(
                    text: "Description about the product",
                    size: 10,
                    weight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: "Rs 250 PKR",
                        size: 14,
                        weight: FontWeight.w800,
                        color: kBlackColor,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>ShoppingCartScreen());
                        },
                        child: CommonImageView(
                          imagePath: Assets.imagesCart1,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )

          ],
        );
      },
    );
  }
}

