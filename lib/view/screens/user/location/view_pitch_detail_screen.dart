import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/common_image_view_widget.dart';
import 'package:caddy_call/view/custom/my_button.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:caddy_call/view/screens/user/location/view_menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';

class ViewPitchDetailScreen extends StatelessWidget {
  ViewPitchDetailScreen({super.key});

  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            // Show background image only for index 0
            image: selectedIndex.value == 0
                ? DecorationImage(
                    image: AssetImage(Assets.imagesBg1),
                    fit: BoxFit.cover,
                  )
                : null,
            // Show solid background color for other indexes
            color: selectedIndex.value == 0 ? null : Colors.white,
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  /// Toggle Selector
                  Container(
                    width: double.infinity,
                    height: 35,
                    padding: const EdgeInsets.all(3),
                    decoration: ShapeDecoration(
                      color: kGLColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Row(
                      children: [
                        /// Pitch
                        Expanded(
                          child: GestureDetector(
                            onTap: () => selectedIndex.value = 0,
                            child: Container(
                              height: 29,
                              decoration: ShapeDecoration(
                                color: selectedIndex.value == 0
                                    ? kPrimaryColor
                                    : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Center(
                                child: MyText(
                                  text: "Pitch",
                                  size: 14,
                                  weight: FontWeight.w600,
                                  color: kQuaternaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 5),

                        /// Course Dashboard
                        Expanded(
                          child: GestureDetector(
                            onTap: () => selectedIndex.value = 1,
                            child: Container(
                              height: 29,
                              decoration: ShapeDecoration(
                                color: selectedIndex.value == 1
                                    ? kPrimaryColor
                                    : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Center(
                                child: MyText(
                                  text: "Course Dashboard",
                                  size: 14,
                                  weight: FontWeight.w600,
                                  color: kQuaternaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  /// Example content
                  if (selectedIndex.value == 0)
                    _pitchContent()
                  else
                    _dashboardContent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _pitchContent() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: MyText(
              text: "Hole 05 Kandy",
              size: 16,
              weight: FontWeight.w700,
              color: kWBGColor,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              width: 85,
              height: 75,
              decoration: ShapeDecoration(
                color: const Color(0xFF424242),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonImageView(svgPath: Assets.svgFlag),
                  MyText(
                    text: "125y",
                    size: 24,
                    weight: FontWeight.w600,
                    color: kQuaternaryColor,
                  ),
                  MyText(
                    text: "Total",
                    size: 12,
                    weight: FontWeight.w400,
                    color: kQuaternaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CommonImageView(imagePath: Assets.imagesRing, height: 200),
              Positioned(
                top: 70,
                left: 50,
                child: CommonImageView(
                  imagePath: Assets.imagesMeenu,
                  height: 50,
                ),
              ),
              Positioned(
                top: -90,
                left: 50,
                child: buildWeatherInfo(
                  title: "Wind",
                  imagePath: Assets.imagesWind,
                  value: "20%",
                ),
              ),
              Positioned(
                top: -30,
                left: 140,
                child: buildWeatherInfo(
                  title: "Next Distance",
                  imagePath: Assets.imagesNextDistance,
                  value: "160y",
                ),
              ),
              Positioned(
                left: 185,
                top: 80,
                child: Row(
                  children: [
                    CommonImageView(
                      imagePath: Assets.imagesDirection,
                      height: 50,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Directions",
                          size: 14,
                          weight: FontWeight.w600,
                          color: kQuaternaryColor,
                        ),
                        SizedBox(height: 2),
                        MyText(
                          text: "Free",
                          size: 16,
                          weight: FontWeight.w700,
                          color: kQuaternaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -40,
                left: 160,
                child: buildWeatherInfo(
                  title: "Flow Details",
                  imagePath: Assets.imagesFlowDetails,
                  value: "Hard",
                ),
              ),
              Positioned(
                bottom: -90,
                left: 50,
                child: buildWeatherInfo(
                  title: "Humidity",
                  imagePath: Assets.imagesHumadity,
                  value: "42%",
                ),
              ),
              Positioned(
                bottom: -40,
                right: -170,
                child: Container(
                  width: 56,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF2E2E2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: kQuaternaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          Padding(
            padding: AppSizes.HORIZONTAL,
            child: MyText(
              text: "Description",
              size: 20,
              weight: FontWeight.w700,
              color: kQuaternaryColor,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: AppSizes.HORIZONTAL,
            child: MyText(
              text:
                  "Lorem ipsum dolor sit amet consectetur. Arcu tincidunt sit dignissim iaculis ornare pretium. "
                  "Viverra feugiat facilisis etiam aenean faucibus tellus montes metus lectus."
                  " Ornare erat iaculis elementum facilisi urna accumsan ut id vel. "
                  "Lacus ridiculus ut purus et nibh ornare aliquet tincidunt eu. "
                  "Lectus nulla vulputate in dictumst sed et ultrices non. Aliquam purus cursus in quis neque purus at amet."
                  "Lorem ipsum dolor sit amet consectetur. Arcu tincidunt sit dignissim iaculis ornare pretium. "
                  "Viverra feugiat facilisis etiam aenean faucibus tellus montes metus lectus. "
                  "Ornare erat iaculis elementum facilisi urna accumsan ut id vel."
                  " Lacus ridiculus ut purus et nibh ornare aliquet tincidunt eu.",
              size: 12,
              weight: FontWeight.w400,
              color: kQuaternaryColor,
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Column(
              children: [
                CommonImageView(
                  imagePath: Assets.imagesMapLocation,
                  height: 60,
                ),
                SizedBox(height: 5),
                MyText(
                  text: "Map Location",
                  size: 16,
                  weight: FontWeight.w700,
                  color: kQuaternaryColor,
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  _dashboardContent() {
    return Column(
      children: [
        Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: AppSizes.DEFAULT,
                decoration: ShapeDecoration(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "The Green Village Club",
                      size: 22,
                      weight: FontWeight.w600,
                      color: kQuaternaryColor,
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        CommonImageView(svgPath: Assets.svgAkarLocation),
                        SizedBox(width: 5),
                        MyText(
                          text: "Green village club near ISE Tower",
                          size: 14,
                          weight: FontWeight.w600,
                          color: kUSLCColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    CommonImageView(imagePath: Assets.imagesH2),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: ShapeDecoration(
                        color: const Color(0x4CD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              MyText(
                                text: "10/18",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kQuaternaryColor,
                              ),
                              SizedBox(height: 5),
                              MyText(
                                text: "Current hole",
                                size: 12,
                                weight: FontWeight.w600,
                                color: const Color(0xFFD2D1D1),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyText(
                                text: "72",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kQuaternaryColor,
                              ),
                              SizedBox(height: 5),
                              MyText(
                                text: "Par",
                                size: 12,
                                weight: FontWeight.w600,
                                color: const Color(0xFFD2D1D1),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyText(
                                text: "74",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kQuaternaryColor,
                              ),
                              SizedBox(height: 5),
                              MyText(
                                text: "Score",
                                size: 12,
                                weight: FontWeight.w600,
                                color: const Color(0xFFD2D1D1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    MyText(
                      text: "Round progress (9 hole completed)",
                      size: 12,
                      weight: FontWeight.w600,
                      color: kUSLCColor,
                    ),
                    SizedBox(height: 6),
                    LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: kUSLCColor,
                      valueColor: AlwaysStoppedAnimation<Color>(kTertiaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              MyText(
                text: "In-Round Action",
                size: 24,
                weight: FontWeight.w600,
                fontFamily: AppFonts.playFair,
                color: kPrimaryColor,
              ),
              SizedBox(height: 20),
              FoodGridScreen(),
            ],
          ),
        ),
        Stack(
          children: [
            CommonImageView(imagePath: Assets.imagesG2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Column(
                children: [
                  MyText(
                    text: "Exclusive Offers",
                    size: 22,
                    weight: FontWeight.w700,
                    color: kQuaternaryColor,
                  ),
                  SizedBox(height: 5),
                  MyText(
                    text: "Get 30% off",
                    size: 31,
                    weight: FontWeight.w700,
                    color: kQuaternaryColor,
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 137,
                      height: 31,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 2,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: kQuaternaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Center(
                        child: MyText(
                          text: "View Details",
                          size: 12,
                          weight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget buildWeatherInfo({
    required String title,
    required String imagePath,
    required String value,
  }) {
    return Column(
      children: [
        MyText(
          text: title,
          size: 12,
          weight: FontWeight.w600,
          color: kQuaternaryColor,
        ),
        const SizedBox(height: 3),
        CommonImageView(imagePath: imagePath, height: 45),
        const SizedBox(height: 3),
        MyText(
          text: value,
          size: 16,
          weight: FontWeight.w700,
          color: kQuaternaryColor,
        ),
      ],
    );
  }
}

class FoodGridScreen extends StatelessWidget {
  FoodGridScreen({super.key});

  // Dummy data
  final List<Map<String, String>> items = [
    {
      "image": Assets.imagesOfd,
      "title": "Order food & drinks",
      "subtitle": "Delivering to hole 10 green",
    },
    {
      "image": Assets.imagesTmc,
      "title": "Track my Cart",
      "subtitle": "Currently near Hole 10 Tee",
    },
    {
      "image": Assets.imagesMs,
      "title": "My Scorecard",
      "subtitle": "Score: +3 over Par (Hole 10)",
    },
    {
      "image": Assets.imagesCmg,
      "title": "Course Map & GPS",
      "subtitle": "Navigate the course with ease",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of columns
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8, // adjust height/width ratio
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          padding: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: kQuaternaryColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          child: Column(
            children: [
              CommonImageView(imagePath: item["image"]!, height: 50),
              const SizedBox(height: 10),
              MyText(
                text: item["title"]!,
                size: 14,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              const SizedBox(height: 10),
              MyText(
                text: item["subtitle"]!,
                size: 12,
                weight: FontWeight.w400,
                color: kText2Color,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              MyButton(
                radius: 6,
                onTap: () {
                  Get.to(() => ViewMenuScreen());
                },
                buttonText: "View Menu",
              ),
            ],
          ),
        );
      },
    );
  }
}
