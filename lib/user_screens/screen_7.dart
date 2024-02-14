import 'package:flutter/material.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_popup_menu_container.dart';

class Screen_Seven extends StatelessWidget {
  Screen_Seven({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: MyPopUpMenuContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.015,
              ),
              Image(
                height: height * 0.125,
                image: const AssetImage(
                  'assets/images/done.png',
                ),
              ),
              const Text(
                'Password Changed Successfully!',
                style: TextStyle(
                  fontSize: 21.5,
                  color: Colors.white,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              MyButton(
                title: 'Back to Login',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              SizedBox(
                height: height * 0.015,
              ),
            ],
          ),
        ));
  }
}
