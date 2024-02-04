import 'package:flutter/material.dart';
import 'package:my_project/constants/my_colors.dart';

class MyPopUpMenuContainer extends StatelessWidget {
  MyPopUpMenuContainer({super.key, required this.child});

  var child;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.075),
        height: height * 0.34,
        width: height * 0.34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          gradient: const LinearGradient(
              colors: [
                AppColors.defaultBlue,
                AppColors.defaultGreen,
                AppColors.defaultBlue,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.3, 0.5, 0.9]),
        ),
        child: child,
      ),
    );
  }
}
