import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    super.key,
    required this.heading,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.showSuffix = false,
    this.myHorizontalPadding = 0.05,
    this.myVerticalPadding = 0.01,
  });

  var heading, hintText, prefixIcon, suffixIcon, showSuffix;
  var myHorizontalPadding,
      myVerticalPadding; //for Screen_Twenty widget. Otherwise, we can remove this variable and use fixed value for padding (MediaQuery).
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: width * 0.03,
            ),
            Text(
              heading.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Color(0xffFFFFFF),
                fontFamily: 'Urbanist',
              ),
            )
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: Color(0xff636889),
              size: height * 0.023,
            ),
            suffixIcon: showSuffix
                ? Icon(
                    suffixIcon,
                    color: Color(0xff636889),
                    size: height * 0.023,
                  )
                : null,
            filled: true,
            fillColor: const Color(0xff202857),
            hintText: hintText.toString(),
            hintStyle: const TextStyle(
              fontSize: 16,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              color: Color(0xffFFFFFF),
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: width * myHorizontalPadding,
                vertical: height * myVerticalPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
              borderSide: BorderSide.none,
            ),
          ),
        )
      ],
    );
  }
}
