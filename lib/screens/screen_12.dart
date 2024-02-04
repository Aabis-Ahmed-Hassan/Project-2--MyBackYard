import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_gradient.dart';
import 'package:my_project/components/my_otp_container.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Twelve extends StatelessWidget {
  const Screen_Twelve({super.key});

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
                  const Text('Verify your Email',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  const Text(
                    "We already sent a code to your email jhon@*****.com, please input below to confirm your email address",
                    textAlign: TextAlign.center,
                    style: AppTexts.SubHeadingStyle1,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyOTPContainer(title: '5'),
                      MyOTPContainer(title: '2'),
                      MyOTPContainer(title: '4'),
                      MyOTPContainer(title: '1'),
                      MyOTPContainer(title: '3'),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        height: height * 0.025,
                        image: AssetImage('assets/icons/timer.png'),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text('00:59',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Urbanist',
                            color: Color(0xffFFFFFF),
                          ))
                    ],
                  ),
                  const Spacer(),
                  MyButton(
                    title: 'Confirm Now',
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
