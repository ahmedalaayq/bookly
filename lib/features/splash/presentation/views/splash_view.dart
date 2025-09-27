import 'package:bookly/core/constants.dart';
import 'package:bookly/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    GoRouter.of(context).push(homeView);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
