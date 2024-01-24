
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_app/page/admin_page.dart';
import 'package:my_app/page/home_page.dart';
import 'package:my_app/page/splash_page.dart';
import 'package:my_app/theme/dark_made.dart';
import 'package:my_app/theme/light_mode.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}