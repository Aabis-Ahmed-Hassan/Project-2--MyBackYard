import 'package:flutter/material.dart';
import 'package:my_project/constants/my_colors.dart';

class MyDropdown extends StatelessWidget {
  MyDropdown({
    super.key,
    required this.heading,
    required this.initialSelection,
    required this.dropdownOneValue,
    required this.dropdownOneLabel,
  });

  String heading, initialSelection, dropdownOneValue, dropdownOneLabel;

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
              style: const TextStyle(
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
        Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: const Color(
              0xff202857,
            ),
            borderRadius: BorderRadius.circular(19),
          ),
          child: DropdownMenu(
            inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.01),
              border: InputBorder.none,
            ),
            initialSelection: initialSelection.toString(),
            textStyle: const TextStyle(
              fontSize: 16,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              color: AppColors.textFormFieldTextColor,
            ),
            trailingIcon: const Icon(Icons.keyboard_arrow_down),
            dropdownMenuEntries: [
              DropdownMenuEntry(
                value: dropdownOneValue.toString(),
                label: dropdownOneLabel.toString(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
