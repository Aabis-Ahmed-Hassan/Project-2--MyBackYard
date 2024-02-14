import 'package:flutter/material.dart';
import 'package:my_project/constants/my_colors.dart';
import 'package:my_project/renter_screens/renter_screen_3.dart';
import 'package:my_project/renter_screens/renter_screen_4.dart';
import 'package:my_project/renter_screens/renter_screen_5.dart';
import 'package:my_project/renter_screens/renter_screen_7.dart';
import 'package:my_project/renter_screens/renter_screen_8.dart';
import 'package:my_project/renter_screens/renter_screen_9.dart';
import 'package:my_project/user_screens/screen_0.dart';
import 'package:my_project/user_screens/screen_1.dart';
import 'package:my_project/user_screens/screen_10.dart';
import 'package:my_project/user_screens/screen_11.dart';
import 'package:my_project/user_screens/screen_12.dart';
import 'package:my_project/user_screens/screen_13.dart';
import 'package:my_project/user_screens/screen_14.dart';
import 'package:my_project/user_screens/screen_15.dart';
import 'package:my_project/user_screens/screen_16.dart';
import 'package:my_project/user_screens/screen_17.dart';
import 'package:my_project/user_screens/screen_18.dart';
import 'package:my_project/user_screens/screen_19.dart';
import 'package:my_project/user_screens/screen_2.dart';
import 'package:my_project/user_screens/screen_20.dart';
import 'package:my_project/user_screens/screen_21.dart';
import 'package:my_project/user_screens/screen_22.dart';
import 'package:my_project/user_screens/screen_23.dart';
import 'package:my_project/user_screens/screen_24.dart';
import 'package:my_project/user_screens/screen_3.dart';
import 'package:my_project/user_screens/screen_4.dart';
import 'package:my_project/user_screens/screen_5.dart';
import 'package:my_project/user_screens/screen_6.dart';
import 'package:my_project/user_screens/screen_7.dart';
import 'package:my_project/user_screens/screen_8.dart';
import 'package:my_project/user_screens/screen_9.dart';
import 'package:my_project/user_screens/test_screen.dart';

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
                // new screens (as renter)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Renter 3',
                        shiftToScreen: const Renter_Screen_3()),
                    MoveToScreen(
                        title: 'Renter 4', shiftToScreen: Renter_Screen_4()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Renter 5',
                        shiftToScreen: const Renter_Screen_5()),
                    MoveToScreen(
                        title: 'Renter 7', shiftToScreen: Renter_Screen_7()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Renter 8',
                        shiftToScreen: const Renter_Screen_8()),
                    MoveToScreen(
                        title: 'Renter 9', shiftToScreen: Renter_Screen_9()),
                  ],
                ),
                //previous screens (as users)

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Test Screen',
                        shiftToScreen: const TestScreen()),
                    MoveToScreen(
                        title: 'Screen 0', shiftToScreen: Screen_Zero()),
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
                        title: 'Screen 7', shiftToScreen: Screen_Seven()),
                    MoveToScreen(
                        title: 'Screen 8', shiftToScreen: const Screen_Eight()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 9', shiftToScreen: const Screen_Nine()),
                    MoveToScreen(
                        title: 'Screen 10', shiftToScreen: const Screen_Ten()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 11',
                        shiftToScreen: const Screen_Eleven()),
                    MoveToScreen(
                        title: 'Screen 12',
                        shiftToScreen: const Screen_Twelve()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 13',
                        shiftToScreen: const Screen_Thirteen()),
                    MoveToScreen(
                        title: 'Screen 14',
                        shiftToScreen: const Screen_Fourteen()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 15',
                        shiftToScreen: const Screen_Fifteen()),
                    MoveToScreen(
                        title: 'Screen 16',
                        shiftToScreen: const Screen_Sixteen()),
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
                        title: 'Screen 22',
                        shiftToScreen: const Screen_Twenty_Two()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoveToScreen(
                        title: 'Screen 23',
                        shiftToScreen: const Screen_Twenty_Three()),
                    MoveToScreen(
                        title: 'Screen 24',
                        shiftToScreen: const Screen_Twenty_Four()),
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
