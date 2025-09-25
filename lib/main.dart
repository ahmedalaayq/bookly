import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/dark_theme.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
