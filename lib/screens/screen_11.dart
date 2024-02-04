import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_gradient.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Eleven extends StatelessWidget {
  const Screen_Eleven({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Text('Privacy Policy',
                      style: AppTexts.HeadingStyle1, textAlign: TextAlign.left),
                  const Text(
                    "Last updated on 8/12/2021",
                    textAlign: TextAlign.left,
                    style: AppTexts.SubHeadingStyle1,
                  ),
                  SizedBox(
                    height: height * 0.045,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(
                              0xffFFFFFF,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.045,
                  ),
                  MyButton(
                    title: 'Agree',
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
      height: width * 0.13,
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
