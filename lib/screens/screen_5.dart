import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_gradient.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Five extends StatelessWidget {
  const Screen_Five({super.key});
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
                  const Text('Forgot Password',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  const Text(
                    "We send you the link to @ex***@email.com, please check and click it to reset your password",
                    textAlign: TextAlign.center,
                    style: AppTexts.SubHeadingStyle1,
                  ),
                  const Spacer(),
                  MyButton(
                    title: 'Reset the Link',
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

class MyOTPBox extends StatelessWidget {
  MyOTPBox({super.key, required this.title});

  var title;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
      height: height * 0.065,
      width: width * 0.13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: const Color(
          0xff202857,
        ),
      ),
      child: Center(
        child: Text(
          title.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Urbanist',
            fontSize: 16,
            color: Color(
              0xffFFFFFF,
            ),
          ),
        ),
      ),
    );
  }
}
