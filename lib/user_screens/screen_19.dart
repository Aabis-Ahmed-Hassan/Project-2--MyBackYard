import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_scaffold_background.dart';
import 'package:my_project/components/my_text_form_field.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Nineteen extends StatelessWidget {
  const Screen_Nineteen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Stack(
      children: [
        const MyContainerForGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: MyAppBar(),
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.085,
                  ),
                  const Text('Reset Password',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  const Text('Please enter a new password',
                      style: AppTexts.SubHeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MyTextFormField(
                    heading: 'New Password',
                    hintText: '***********',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.remove_red_eye_outlined,
                    showSuffix: true,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MyTextFormField(
                    heading: 'Confirm New Password',
                    hintText: '***********',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.remove_red_eye_outlined,
                    showSuffix: true,
                  ),
                  const Spacer(),
                  MyButton(
                    title: 'Save New Password',
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
