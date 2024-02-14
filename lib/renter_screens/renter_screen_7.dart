import 'package:flutter/material.dart';
import 'package:my_project/components/my_app_bar.dart';
import 'package:my_project/components/my_container_for_scaffold_background.dart';

class Renter_Screen_7 extends StatelessWidget {
  const Renter_Screen_7({super.key});

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
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.045,
                  ),
                  MyBooking(
                      date: '15th - 16th',
                      month: 'March 2023',
                      name: 'Backyard Name',
                      city: 'Washington DC, USA',
                      status: 'Paid'),
                  MyBooking(
                      date: '15th - 16th',
                      month: 'March 2023',
                      name: 'Backyard Name',
                      city: 'Washington DC, USA',
                      status: 'Paid'),
                  MyBooking(
                      date: '15th - 16th',
                      month: 'March 2023',
                      name: 'Backyard Name',
                      city: 'Washington DC, USA',
                      status: 'Paid'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyBooking extends StatelessWidget {
  String date, month, name, city, status;

  MyBooking(
      {super.key,
      required this.date,
      required this.month,
      required this.name,
      required this.city,
      required this.status});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    //this outer container controls the (bottom) margin for the  booking item
    //although we can control margin without this container but I've used for easy understanding
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.025),
      child: Stack(
        children: [
          Column(
            children: [
              //using sizedbox so that the below container will start from half of the icon container
              SizedBox(
                height: height * 0.0325,
              ),
              //this container displays the details (not the icon)
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.1, vertical: height * 0.025),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //this left column shows text details like date, month, name and city
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                        Text(
                          month,
                          style: const TextStyle(
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Urbanist',
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          city,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.005),
                      decoration: BoxDecoration(
                        color: Color(0xff46B649),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          status,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          //this containers displays the icon only
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 0.065,
              width: height * 0.065,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Image(
                  height: height * 0.02,
                  image: const AssetImage('assets/images/image_5.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
