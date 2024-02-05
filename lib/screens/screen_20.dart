import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_scaffold_background.dart';
import 'package:my_project/components/my_text_form_field.dart';
import 'package:my_project/constants/my_texts.dart';

class Screen_Twenty extends StatelessWidget {
  const Screen_Twenty({super.key});

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
                  const Text('Contact Us',
                      style: AppTexts.HeadingStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MyTextFormField(
                    heading: 'Email',
                    hintText: 'example@email.com',
                    prefixIcon: Icons.email,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xff202857),
                      hintText: 'Type a message...',
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),
                      contentPadding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: height * 0.03,
                          bottom: height * 0.125),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: BorderSide.none,
                      ),
                      alignLabelWithHint: true,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  DottedBorder(
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(7),
                    dashPattern: [10, 10],
                    child: Container(
                      height: height * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attach_file,
                            size: 18,
                            color: Color(0xffFFFFFF),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Attach File ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w500,
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: '(should not be more than 12mb)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(
                                      0.8,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
