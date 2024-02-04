import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.title, this.onTap});

  var title;
  var onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          gradient: LinearGradient(
            colors: [
              Color(0xff2E225C),
              Color(0xffAF70AF),
            ],
            stops: [0.1, 0.6],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            title.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              fontFamily: 'Urbanist',
              color: Color(
                0xffFFFFFF,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
