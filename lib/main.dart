import 'package:caddy_call/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:caddy_call/view/screens/bottom_nav_bar/staff_bottom_nav_bar.dart';
import 'package:caddy_call/view/screens/staff/bevCart/bev_cart_screen.dart';
import 'package:caddy_call/view/screens/staff/history/history_screen.dart';
import 'package:caddy_call/view/screens/staff/kitchen/kitchen_screen.dart';
import 'package:caddy_call/view/screens/staff/shift/shiftscreen.dart';
import 'package:caddy_call/view/screens/staff/staff_home/staff_home_screen.dart';
import 'package:caddy_call/view/screens/staff/track/track_screen.dart';
import 'package:caddy_call/view/screens/user/home/home_screen.dart';
import 'package:caddy_call/view/screens/user/location/items_detail_screen.dart';
import 'package:caddy_call/view/screens/user/location/view_menu_screen.dart';
import 'package:caddy_call/view/screens/user/location/view_pitch_detail_screen.dart';
import 'package:caddy_call/view/screens/user/score_card/score_card_screen.dart';
import 'package:caddy_call/view/screens/user/setting/achievements_screen.dart';
import 'package:caddy_call/view/screens/user/setting/history_screen.dart';
import 'package:caddy_call/view/screens/user/setting/payment_screen.dart';
import 'package:caddy_call/view/screens/user/setting/setting_screen.dart';
import 'package:caddy_call/view/screens/user/shop/shop_screen.dart';
import 'package:caddy_call/view/screens/user/shop/shopping_cart_screen.dart';
import 'package:caddy_call/view/screens/user/shop/track_order_screen.dart';
import 'package:caddy_call/view/screens/user/user_auth/forget_password_screen.dart';
import 'package:caddy_call/view/screens/user/user_auth/login_screen.dart';
import 'package:caddy_call/view/screens/user/user_auth/new_password_screen.dart';
import 'package:caddy_call/view/screens/user/user_auth/verification_code_screen.dart';
import 'package:caddy_call/view/splash_service/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/constants/app_fonts.dart';
import 'controller/select_role_controller/select_role_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await UserSimplePreferences.init();
  // ✅ Set bottom navigation bar color globally
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Optional
      statusBarIconBrightness: Brightness.dark, // Optional
      systemNavigationBarColor: Colors.black, // Bottom nav bar color
      systemNavigationBarIconBrightness: Brightness.light, // Icons color
    ),
  );

  Get.put(SelectRoleController());
  runApp(MyApp());
}

final String dummyImage2 = 'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
final String dummyImage1 = 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=150&h=150&fit=crop&crop=face';
final String dummyImage = 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Passion Port",
      theme: ThemeData(
        fontFamily: AppFonts.poppins,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      ),
      home: SplashScreen(),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
