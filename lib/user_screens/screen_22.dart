import 'package:flutter/material.dart';
import 'package:my_project/components/my_popup_menu_container.dart';

class Screen_Twenty_Two extends StatelessWidget {
  const Screen_Twenty_Two({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: MyPopUpMenuContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: height * 0.125,
                image: const AssetImage(
                  'assets/images/done.png',
                ),
              ),
              const Text(
                'Changes Saved!',
                style: TextStyle(
                  fontSize: 21.5,
                  color: Colors.white,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
