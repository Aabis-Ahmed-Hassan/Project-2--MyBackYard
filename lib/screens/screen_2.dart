import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_gradient.dart';
import 'package:my_project/components/my_text_form_field.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Two extends StatelessWidget {
  const Screen_Two({super.key});

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
                  const Text('Hi, Welcome Back',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  const Text('Please to see you!',
                      style: AppTexts.SubHeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MyTextFormField(
                    heading: 'Email',
                    hintText: 'John Doe',
                    prefixIcon: Icons.email,
                    showSuffix: false,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MyTextFormField(
                    heading: 'Password',
                    hintText: '***********',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.remove_red_eye_outlined,
                    showSuffix: true,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Spacer(),
                  MyButton(
                    title: 'Login',
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
