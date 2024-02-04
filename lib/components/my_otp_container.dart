import 'package:flutter/material.dart';

class MyOTPContainer extends StatelessWidget {
  MyOTPContainer({super.key, required this.title});

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
        color: Color(
          0xff202857,
        ),
      ),
      child: Center(
        child: Text(
          title.toString(),
          style: TextStyle(
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
