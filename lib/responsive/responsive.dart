import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ResnosiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResnosiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreensize) {
        //web screen
        return webScreenLayout;
      }
      return mobileScreenLayout;
      // mobile screen
    });
  }
}
