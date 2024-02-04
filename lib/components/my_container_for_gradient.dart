import 'package:flutter/material.dart';
import 'package:my_project/constants/my_colors.dart';

class MyContainerForGradient extends StatelessWidget {
  const MyContainerForGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              AppColors.defaultBlue,
              AppColors.defaultGreen,
              AppColors.defaultBlue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 0.5, 0.9]),
      ),
    );
  }
}
