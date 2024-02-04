import 'package:flutter/material.dart';
import 'package:my_project/constants/my_colors.dart';
import 'package:my_project/screens/screen_1.dart';
import 'package:my_project/screens/screen_10.dart';
import 'package:my_project/screens/screen_11.dart';
import 'package:my_project/screens/screen_12.dart';
import 'package:my_project/screens/screen_13.dart';
import 'package:my_project/screens/screen_17.dart';
import 'package:my_project/screens/screen_18.dart';
import 'package:my_project/screens/screen_19.dart';
import 'package:my_project/screens/screen_2.dart';
import 'package:my_project/screens/screen_20.dart';
import 'package:my_project/screens/screen_21.dart';
import 'package:my_project/screens/screen_3.dart';
import 'package:my_project/screens/screen_4.dart';
import 'package:my_project/screens/screen_5.dart';
import 'package:my_project/screens/screen_6.dart';
import 'package:my_project/screens/screen_8.dart';
import 'package:my_project/screens/screen_9.dart';
import 'package:my_project/screens/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.defaultBlue,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MoveToScreen(
                        title: 'Test Screen',
                        shiftToScreen: const TestScreen()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 1', shiftToScreen: const Screen_One()),
                    MoveToScreen(
                        title: 'Screen 2', shiftToScreen: const Screen_Two()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 3', shiftToScreen: const Screen_Three()),
                    MoveToScreen(
                        title: 'Screen 4', shiftToScreen: const Screen_Four()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 5', shiftToScreen: const Screen_Five()),
                    MoveToScreen(
                        title: 'Screen 6', shiftToScreen: const Screen_Six()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 8', shiftToScreen: const Screen_Eight()),
                    MoveToScreen(
                        title: 'Screen 9', shiftToScreen: const Screen_Nine()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 10', shiftToScreen: const Screen_Ten()),
                    MoveToScreen(
                        title: 'Screen 11',
                        shiftToScreen: const Screen_Eleven()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 12',
                        shiftToScreen: const Screen_Twelve()),
                    MoveToScreen(
                        title: 'Screen 13',
                        shiftToScreen: const Screen_Thirteen()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 17',
                        shiftToScreen: const Screen_Seventeen()),
                    MoveToScreen(
                        title: 'Screen 18',
                        shiftToScreen: const Screen_Eighteen()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 19',
                        shiftToScreen: const Screen_Nineteen()),
                    MoveToScreen(
                        title: 'Screen 20',
                        shiftToScreen: const Screen_Twenty()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 21',
                        shiftToScreen: const Screen_Twenty_One()),
                    MoveToScreen(
                        title: 'Screen 21',
                        shiftToScreen: const Screen_Twenty_One()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MoveToScreen extends StatelessWidget {
  MoveToScreen({
    super.key,
    required this.title,
    required this.shiftToScreen,
  });

  var title;
  var shiftToScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => shiftToScreen));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.defaultBlue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
