import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/dark_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
