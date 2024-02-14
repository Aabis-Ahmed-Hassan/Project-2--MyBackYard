import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar(
      {super.key,
      this.donotShowLeading = false,
      this.showBellIcon = false,
      this.showTitle = false,
      this.appBarTitle});

  var donotShowLeading;
  var showBellIcon;
  var showTitle;
  var appBarTitle;
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
                    //using circle avatar because radius of container widget wasn't working

                    child: CircleAvatar(
                      radius: width * 0.07,
                      backgroundColor: const Color(0xff222952),
                      child: Container(
                        // width: width * 0.125,
                        // height: height * 0.125,
                        child: Center(
                          child: Image(
                              height: height * 0.0175,
                              fit: BoxFit.fitWidth,
                              image: const AssetImage(
                                  'assets/icons/back_arrow_for_appbar.png')),
                        ),
                      ),
                    ),
                  ),
                  showTitle
                      ? Text(
                          appBarTitle.toString(),
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.5,
                            color: Colors.white,
                          ),
                        )
                      : Container(),
                  showBellIcon
                      //using circle avatar because radius of container widget wasn't working
                      ? CircleAvatar(
                          radius: width * 0.07,
                          backgroundColor: const Color(0xff222952),
                          child: Opacity(
                            opacity: 0.3,
                            child: Container(
                              // width: width * 0.125,
                              // height: height * 0.125,
                              child: Center(
                                child: Image(
                                    height: height * 0.0175,
                                    fit: BoxFit.fitWidth,
                                    image: const AssetImage(
                                        'assets/icons/bell_2.png')),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ));
  }
}
