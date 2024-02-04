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
import 'package:my_project/screens/screen_3.dart';
import 'package:my_project/screens/screen_4.dart';
import 'package:my_project/screens/screen_5.dart';
import 'package:my_project/screens/screen_6.dart';
import 'package:my_project/screens/screen_8.dart';
import 'package:my_project/screens/screen_9.dart';

void main() {
  runApp(MyApp());
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MoveToScreen(title: 'Screen 1', shiftToScreen: Screen_One()),
                MoveToScreen(title: 'Screen 2', shiftToScreen: Screen_Two()),
                MoveToScreen(title: 'Screen 3', shiftToScreen: Screen_Three()),
                MoveToScreen(title: 'Screen 4', shiftToScreen: Screen_Four()),
                MoveToScreen(title: 'Screen 5', shiftToScreen: Screen_Five()),
                MoveToScreen(title: 'Screen 6', shiftToScreen: Screen_Six()),
                MoveToScreen(title: 'Screen 8', shiftToScreen: Screen_Eight()),
                MoveToScreen(title: 'Screen 9', shiftToScreen: Screen_Nine()),
                MoveToScreen(title: 'Screen 10', shiftToScreen: Screen_Ten()),
                MoveToScreen(
                    title: 'Screen 11', shiftToScreen: Screen_Eleven()),
                MoveToScreen(
                    title: 'Screen 12', shiftToScreen: Screen_Twelve()),
                MoveToScreen(
                    title: 'Screen 13', shiftToScreen: Screen_Thirteen()),
                MoveToScreen(
                    title: 'Screen 17', shiftToScreen: Screen_Seventeen()),
                MoveToScreen(
                    title: 'Screen 18', shiftToScreen: Screen_Eighteen()),
                MoveToScreen(
                    title: 'Screen 19', shiftToScreen: Screen_Nineteen()),
                MoveToScreen(
                    title: 'Screen 20', shiftToScreen: Screen_Twenty()),
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
        margin: EdgeInsets.symmetric(vertical: 15),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.defaultBlue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
