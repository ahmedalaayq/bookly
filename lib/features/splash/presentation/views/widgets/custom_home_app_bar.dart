import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class CustomHomeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 80,
        leading: Image.asset(Assets.logo, height: 16),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(searchView);
            },
            icon: const Icon(
              IconlyLight.search,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
