import 'package:flutter/material.dart';
import 'package:my_project/components/my_popup_menu_container.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPopUpMenuContainer(
        child: Container(),
      ),
    );
  }
}
