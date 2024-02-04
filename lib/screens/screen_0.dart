import 'package:flutter/material.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/constants/my_colors.dart';

class Screen_Zero extends StatefulWidget {
  const Screen_Zero({super.key});

  @override
  State<Screen_Zero> createState() => _Screen_ZeroState();
}

class _Screen_ZeroState extends State<Screen_Zero> {
  var currentPage = 0;
  final PageController myPageController = PageController(initialPage: 0);
  List myColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  List backgroundImagePath = [
    'assets/images/image_1.png',
    'assets/images/image_2.png',
    'assets/images/image_3.png',
  ];
  List heading = [
    'Lorem Ipsum Dolor',
    'Lorem Ipsum Dolor',
    'Lorem Ipsum Dolor',
  ];
  List description = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        body: Stack(
      children: [
        //background image and blue container in the bottom (without boxshadow)
        Column(
          children: [
            Image(
              image: AssetImage(
                backgroundImagePath[currentPage],
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.defaultBlue,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: height * 0.4,
            width: width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.defaultBlue,
              boxShadow: [
                BoxShadow(
                  color: AppColors.defaultBlue,
                  blurRadius: 25,
                  spreadRadius: 20,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                heading[index],
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                ),
                              ),
                              Text(
                                description[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 13.5,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.07,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => MyDots(
                    index: index,
                    currentPageValue: currentPage,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              MyButton(title: 'Next'),
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: const Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class MyDots extends StatelessWidget {
  MyDots({
    super.key,
    required this.index,
    required this.currentPageValue,
  });

  var index;
  var currentPageValue;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.01),
      height: height * 0.009,
      width: height * 0.009,
      decoration: BoxDecoration(
        color: index == currentPageValue ? Colors.white : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
