import 'package:bookly/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly/features/splash/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        appBar:CustomHomeAppBar() ,
        body:HomeViewBody() ,
      ));
  }
}