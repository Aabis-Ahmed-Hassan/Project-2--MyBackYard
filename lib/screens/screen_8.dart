import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_gradient.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Eight extends StatelessWidget {
  const Screen_Eight({super.key});

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
                  const Text('Sign Up',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  const Text('Create an account to continue',
                      style: AppTexts.SubHeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  SignInOptions(
                      title: 'Login with Google',
                      imagePath: 'assets/images/google.png'),
                  SignInOptions(
                      title: 'Login with Apple ID',
                      imagePath: 'assets/images/apple.png'),
                  SignInOptions(
                      title: 'Login with Email',
                      imagePath: 'assets/images/gmail.png'),
                  const Spacer(),
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Urbanist',
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
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

class SignInOptions extends StatelessWidget {
  SignInOptions({super.key, required this.title, required this.imagePath});

  var title;
  var imagePath;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      height: height * 0.075,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(
          19,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: height * 0.04,
            image: AssetImage(
              imagePath.toString(),
            ),
          ),
          SizedBox(
            width: width * 0.06,
          ),
          Text(
            title.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Urbanist',
              fontSize: 16,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
