import 'package:flutter/material.dart';
import 'package:my_project/constants/my_colors.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    super.key,
    required this.heading,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.showSuffix = false,
    this.showPrefix = true,
  });

  var heading, hintText, prefixIcon, suffixIcon, showSuffix;
  bool showPrefix; //for screen 14,16
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
            prefixIcon: showPrefix
                ? Icon(
                    prefixIcon,
                    color: Color(0xff636889),
                    size: height * 0.023,
                  )
                : null,
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
              color: AppColors.textFormFieldTextColor,
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.01),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
              borderSide: BorderSide.none,
            ),
            alignLabelWithHint: true,
          ),
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}
