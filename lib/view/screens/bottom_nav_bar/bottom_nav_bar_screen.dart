import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../generated/assets.dart';
import '../../custom/my_text_widget.dart';
import '../user/home/home_screen.dart';
import '../user/location/view_pitch_detail_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final RxInt currentIndex = 0.obs;

  final List<Map<String, dynamic>> items = [
    {
      'selected': Assets.imagesSelectedHome,
      'unselected': Assets.imagesUnselectedHome,
      'label': 'Home',
    },
    {
      'selected': Assets.imagesSelectedLocation,
      'unselected': Assets.imagesUnselectedLocation,
      'label': 'Track',
    },
    {
      'selected': Assets.imagesSelectedShop,
      'unselected': Assets.imagesUnselectedShop,
      'label': 'Shop',
    },
    {
      'selected': Assets.imagesSelectedScoreBoard,
      'unselected': Assets.imagesUnselectedScoreboard,
      'label': 'Scorecard',
    },
    {
      'selected': Assets.imagesSelectedProfile,
      'unselected': Assets.imagesUnselectedProfile,
      'label': 'Profile',
    },
  ];

  final List<Widget> screens = [
    HomeScreen(),
    ViewPitchDetailScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
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
