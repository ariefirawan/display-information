import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/features/home/index/screens/screens.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Responsive(
        mobile: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: size.width > 1340 ? 8 : 7,
                  child: const LeftScreen(),
                ),
                Expanded(
                  flex: size.width > 1340 ? 5 : 6,
                  child: const RightScreen(),
                ),
              ],
            ),
          ),
        ),
        tablet: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: size.width > 1340 ? 8 : 7,
                  child: const LeftScreen(),
                ),
                Expanded(
                  flex: size.width > 1340 ? 5 : 6,
                  child: const RightScreen(),
                ),
              ],
            ),
          ),
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: size.width > 1340 ? 8 : 2,
              child: const LeftScreen(),
            ),
            Expanded(
              flex: size.width > 1340 ? 5 : 11,
              child: const RightScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
