import 'package:flutter/material.dart';
import 'package:my_project/components/my_popup_menu_container.dart';
import 'package:my_project/constants/my_colors.dart';

class Renter_Screen_8 extends StatelessWidget {
  const Renter_Screen_8({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            MyPopUpMenuContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.06,
                  ),
                  const Text(
                    'How was your activity?',
                    style: TextStyle(
                      fontSize: 21.5,
                      color: Colors.white,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.0075,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < 5; i++)
                        Icon(
                          Icons.star_rounded,
                          color: Color(0xffFFB35A),
                          size: 27,
                        )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Feedback',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffFFFFFF),
                        fontFamily: 'Urbanist',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
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
                ],
              ),
            ),
            Positioned(
              top: height * 0.285,
              left: width * 0.4,
              child: Container(
                height: width * 0.2,
                width: width * 0.2,
                decoration: BoxDecoration(
                  color: Color(0xff232C60),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
