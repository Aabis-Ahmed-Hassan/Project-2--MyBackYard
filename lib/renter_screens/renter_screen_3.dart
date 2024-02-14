import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_button.dart';
import 'package:my_project/components/my_container_for_scaffold_background.dart';
import 'package:my_project/components/my_text_form_field.dart';

class Renter_Screen_3 extends StatelessWidget {
  const Renter_Screen_3({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Stack(
      children: [
        const MyContainerForGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: MyAppBar(
            showBellIcon: true,
            showTitle: true,
            appBarTitle: 'Booking Details',
          ),
          //using stack to show the 'booking details' section in the bottom
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.045,
                    ),
                    MyTextFormField(
                      heading: 'Full Name',
                      hintText: 'John Doe',
                      prefixIcon: Icons.person,
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MyTextFormField(
                            heading: 'No. of Guests',
                            hintText: 'John Doe',
                            showPrefix: true,
                            prefixIcon: Icons.person,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Expanded(
                          child: MyTextFormField(
                            heading: 'Total Hours',
                            hintText: '5',
                            showPrefix: true,
                            prefixIcon: Icons.watch_later,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const Text(
                          'Booking Details',
                          style: TextStyle(
                              fontSize: 27.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Urbanist'),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        MyBookingItem(
                          heading: 'Price',
                          itemName: '5 Hours - x\$100',
                          itemPrice: '\$500',
                          showPerHourText: true,
                        ),
                        MyBookingItem(
                            heading: 'Fee',
                            itemName: 'App Admin',
                            itemPrice: '\$1.5'),
                        MyBookingItem(
                            heading: 'Price',
                            itemName: 'USA Taxes',
                            itemPrice: '\$3.5'),
                        SizedBox(
                          height: height * 0.0225,
                        ),
                        MyButton(
                          title: 'Next',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MyBookingItem extends StatelessWidget {
  String heading, itemName, itemPrice;
  bool showPerHourText;
  MyBookingItem(
      {super.key,
      required this.heading,
      required this.itemName,
      required this.itemPrice,
      this.showPerHourText = false});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.005,
        ),
        Text(
          heading.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Urbanist',
            color: Color(0xff72957D),
            fontSize: 16,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: itemName + ' ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                  showPerHourText
                      ? TextSpan(
                          text: '/hour',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ))
                      : TextSpan(),
                ],
              ),
            ),
            Text(
              itemPrice.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'Urbanist',
              ),
            )
          ],
        ),
        Divider(
          color: Color(0xff5E8F5E),
        ),
      ],
    );
  }
}
