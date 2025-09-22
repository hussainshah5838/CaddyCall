import 'dart:developer';

import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/screens/staff/bevCart/bev_cart_screen.dart';
import 'package:caddy_call/view/screens/staff/kitchen/kitchen_screen.dart';
import 'package:caddy_call/view/screens/staff/shift/shiftscreen.dart';
import 'package:caddy_call/view/screens/staff/staff_home/staff_home_screen.dart';
import 'package:caddy_call/view/screens/staff/track/track_screen.dart';
import 'package:flutter/material.dart';
import 'package:caddy_call/view/screens/user/score_card/score_card_screen.dart';
import 'package:caddy_call/view/screens/user/setting/setting_screen.dart';
import 'package:caddy_call/view/screens/user/shop/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../generated/assets.dart';
import '../../custom/my_text_widget.dart';
import '../staff/staff_profile/staff_profile_screen.dart';
import '../user/home/home_screen.dart';
import '../user/location/view_pitch_detail_screen.dart';

class StaffBottomNavBar extends StatelessWidget {
  StaffBottomNavBar({super.key});

  final RxInt currentIndex = 0.obs;

  final List<Map<String, dynamic>> items = [
    {
      'selected': Assets.imagesShs1,
      'unselected': Assets.imagesSh1,
      'label': 'Home',
    },
    {
      'selected': Assets.imagesBcs,
      'unselected': Assets.imagesBc,
      'label': 'Bev Cart',
    },
    {
      'selected': Assets.imagesKitchens,
      'unselected': Assets.imagesKchn,
      'label': 'Kitchen',
    },
    {
      'selected': Assets.imagesPss,
      'unselected': Assets.imagesPs,
      'label': 'Pro Shop',
    },
    {
      'selected': Assets.imagesServices,
      'unselected': Assets.imagesService,
      'label': 'Service',
    },
  ];

  final List<Widget> screens = [
    StaffHomeScreen(),
    BevCartScreen(),
    KitchenScreen(),
    TrackScreen(),
    StaffProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // ✅ Call dialog only once when screen builds for the first time
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showStartDialog(context);
    });
    return Obx(
      () => Scaffold(
        body: screens[currentIndex.value],
        bottomNavigationBar: Container(
          decoration: ShapeDecoration(
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: kPrimaryColor,
              ),
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: kPrimaryColor,
            onTap: (index) {
              currentIndex.value = index;
              log("Selected Index: ${currentIndex.value}");
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex.value,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kTertiaryColor,
            items: List.generate(items.length, (index) {
              final isActive = currentIndex.value == index;
              return BottomNavigationBarItem(
                tooltip: items[index]['label'],
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      isActive
                          ? items[index]['selected']
                          : items[index]['unselected'],
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(height: 5),
                    MyText(
                      text: items[index]['label'],
                      color: isActive ? kQuaternaryColor : kUSLCColor,
                      size: 12,
                      weight: isActive ? FontWeight.w600 : FontWeight.w500,
                      fontFamily: AppFonts.inter,
                    ),
                  ],
                ),
                label: '',
              );
            }),
          ),
        ),
      ),
    );
  }
}
void _showStartDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // user must press button
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonImageView(
              imagePath: Assets.imagesLocation,
              height: 50,
            ),
            const SizedBox(height: 10),
            MyText(
              text: "Location Permission",
              size: 20,
              weight: FontWeight.w600,
              color: kBlackColor,
            ),
            const SizedBox(height: 10),
            MyText(
              text:
              'Allow CaddyCall to access your location to find nearby golf courses?',
              size: 14,
              weight: FontWeight.w400,
              color: kText2Color,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            MyButton(
              onTap: () {
                Navigator.pop(context); // close dialog after click
                // TODO: request location permission here
              },
              buttonText: "Allow Access",
            ),
          ],
        ),
      ),
    ),
  );
}
