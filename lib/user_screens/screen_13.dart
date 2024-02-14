import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_container_for_scaffold_background.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Thirteen extends StatelessWidget {
  const Screen_Thirteen({super.key});
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
            donotShowLeading: true,
          ),
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
                  Image(
                      height: height * 0.2,
                      image: const AssetImage('assets/images/done.png')),
                  const Spacer(),
                  const Text('Successfully\nVerified!',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const Text(
                      'Your account is set now, we will redirect you to  profile information',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Urbanist'),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.25,
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
