import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/splash_service/select_role_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants/app_colors.dart';
import '../../config/constants/app_fonts.dart';
import '../../config/constants/app_sizes.dart';
import '../../generated/assets.dart';
import '../custom/common_image_view_widget.dart';
import '../custom/my_text_widget.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final RxInt currentPage = 0.obs;

  // Titles for each page
  final List<String> titles = [
    "Welcome to CaddyCall",
    "Order On-Demand",
    "Track the Cart Live",
  ];

  // Descriptions for each page
  final List<String> descriptions = [
    "Your personal on-course companion. Order food, track deliveries, and keep your game on point — all from your.",
    "Your personal onBrowse the full course menu and order snacks, drinks, or pro shop items from anywhere on the course.-course companion. Order food, track deliveries, and keep your game on point — all from your.",
    "See the beverage cart approaching in real-time — no more waiting, no more guessing.",
  ];

  void _nextPage(BuildContext context) {
    if (currentPage.value < titles.length - 1) {
      currentPage.value++;
    } else {
      Get.offAll(() => SelectRoleScreen()); // Navigate to next screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              // Fixed image
              CommonImageView(imagePath: Assets.imagesG1, height: 333),
              const SizedBox(height: 20),

              // Dynamic text
              Obx(
                () => Column(
                  children: [
                    MyText(
                      text: titles[currentPage.value],
                      size: 30,
                      weight: FontWeight.w400,
                      color: kTextColor,
                      fontFamily: AppFonts.jaini,
                    ),
                    const SizedBox(height: 15),
                    MyText(
                      text: descriptions[currentPage.value],
                      size: 14,
                      weight: FontWeight.w400,
                      color: kText2Color,
                      fontFamily: AppFonts.inter,
                      textAlign: TextAlign.center,
                      lineHeight: 1.43,
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Dots indicator
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    titles.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: currentPage.value == index ? 12 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentPage.value == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Button
              Obx(
                () => MyButton(
                  onTap: () => _nextPage(context),
                  backgroundColor: kTertiaryColor,
                  fontColor: kPrimaryColor,
                  buttonText: currentPage.value == titles.length - 1
                      ? "Get Started"
                      : "Next",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
