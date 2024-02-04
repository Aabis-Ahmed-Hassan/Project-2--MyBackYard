import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_gradient.dart';
import 'package:my_project/components/my_text_form_field.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Nine extends StatelessWidget {
  const Screen_Nine({super.key});

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
                    height: height * 0.01,
                  ),
                  const Text('Get Started',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  const Text('Create an account to continue',
                      style: AppTexts.SubHeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MyTextFormField(
                    heading: 'Full Name',
                    hintText: 'John Doe',
                    prefixIcon: Icons.person,
                    showSuffix: false,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  MyTextFormField(
                    heading: 'Email',
                    hintText: 'John Doe',
                    prefixIcon: Icons.email,
                    showSuffix: false,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  MyTextFormField(
                    heading: 'Password',
                    hintText: '***********',
                    prefixIcon: Icons.lock,
                    showSuffix: true,
                    suffixIcon: Icons.remove_red_eye_outlined,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  MyTextFormField(
                    heading: 'Password',
                    hintText: '***********',
                    prefixIcon: Icons.lock,
                    showSuffix: true,
                    suffixIcon: Icons.remove_red_eye_outlined,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.02,
                        width: height * 0.02,
                        decoration: BoxDecoration(
                          color: Color(0xffBADA8B),
                          borderRadius: BorderRadius.circular(
                            18,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Color(0xff49A153),
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'By sign up I agree with Terms and Conditions',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                            fontFamily: 'Urbanist'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.02,
                        width: height * 0.02,
                        decoration: BoxDecoration(
                          color: Color(0xffBADA8B),
                          borderRadius: BorderRadius.circular(
                            18,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Color(0xff49A153),
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'By sign up I agree with Terms and Conditions',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                            fontFamily: 'Urbanist'),
                      )
                    ],
                  ),
                  const Spacer(),
                  MyButton(
                    title: 'Create New Account',
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
