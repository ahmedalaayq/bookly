import 'package:flutter/material.dart';

class CustomBookDetailsViewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomBookDetailsViewAppBar({
    super.key,
    required this.onPressedLeadingIcon,
  });
  final VoidCallback onPressedLeadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: onPressedLeadingIcon,
          icon: const Icon(Icons.clear, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
