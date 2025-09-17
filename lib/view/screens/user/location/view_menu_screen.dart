import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/custom_appbar.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBox(
                  svgPath: Assets.svgPizza,
                  onTap: () {},
                ),
                IconBox(
                  svgPath: Assets.svgChiken,
                  onTap: () {},
                ),
                IconBox(
                  svgPath: Assets.svgBurger,
                  onTap: () {},
                ),
                IconBox(
                  svgPath: Assets.svgSpagethi,
                  onTap: () {},
                ),
                IconBox(
                  svgPath: Assets.svgMore,
                  onTap: () {},
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}





class IconBox extends StatelessWidget {
  final String svgPath;
  final Color color;
  final double borderRadius;
  final VoidCallback? onTap;

  const IconBox({
    super.key,
    required this.svgPath,
    this.color = kPrimaryColor,
    this.borderRadius = 15.25,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: CommonImageView(svgPath: svgPath),
      ),
    );
  }
}
