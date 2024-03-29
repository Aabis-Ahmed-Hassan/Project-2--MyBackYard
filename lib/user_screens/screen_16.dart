import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_scaffold_background.dart';
import 'package:my_project/components/my_text_form_field.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Sixteen extends StatelessWidget {
  const Screen_Sixteen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Stack(
      children: [
        const MyContainerForGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: MyAppBar(
            showBellIcon: true,
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.045,
                  ),
                  const Text('Profile Info',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_image.png'),
                    radius: width * 0.125,
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  MyTextFormField(
                    heading: 'Full Name',
                    hintText: 'John Doe',
                    prefixIcon: Icons.person,
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          heading: 'Country',
                          hintText: 'US',
                          showPrefix: false,
                          showSuffix: true,
                          suffixIcon: Icons.keyboard_arrow_down,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Expanded(
                        child: MyTextFormField(
                          heading: 'City',
                          hintText: 'NewYork',
                          showPrefix: false,
                          showSuffix: true,
                          suffixIcon: Icons.keyboard_arrow_down,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          heading: 'State',
                          hintText: 'Wyoming',
                          showPrefix: false,
                          showSuffix: true,
                          suffixIcon: Icons.keyboard_arrow_down,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Expanded(
                        child: MyTextFormField(
                          heading: 'Zip Code',
                          hintText: '54000',
                          showPrefix: false,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  MyButton(
                    title: 'Next',
                  ),
                  SizedBox(
                    height: height * 0.065,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
