import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar(
      {super.key, this.donotShowLeading = false, this.showBellIcon = false});

  var donotShowLeading;
  var showBellIcon;
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: donotShowLeading
            ? null
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: width * 0.125,
                      height: height * 0.125,
                      decoration: BoxDecoration(
                        color: const Color(0xff222952),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Image(
                            height: height * 0.0175,
                            fit: BoxFit.fitWidth,
                            image: const AssetImage(
                                'assets/icons/back_arrow_for_appbar.png')),
                      ),
                    ),
                  ),
                  showBellIcon
                      ? Container(
                          width: width * 0.125,
                          height: height * 0.125,
                          decoration: BoxDecoration(
                            color: const Color(0xff222952),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image(
                                height: height * 0.0175,
                                fit: BoxFit.fitWidth,
                                image: const AssetImage(
                                    'assets/icons/bell_2.png')),
                          ),
                        )
                      : Container(),
                ],
              ));
  }
}
