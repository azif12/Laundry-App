import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilebackground2,
      body: Column(
        children: [
          Container(
            width: 400,
            height: 130,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    "Dashboard",
                    style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Overview',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      color: black,
                      fontSize: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Container(
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    width: 120,
                    height: 30,
                    child: Row(children: [
                      SizedBox(width: 5),
                      Image.asset(width: 20, 'assests/calendar.png'),
                      SizedBox(width: 5),
                      Text(
                        'Jan-Mar',
                        style: GoogleFonts.dmSans(color: Greyhome),
                      ),
                      Icon(Icons.arrow_drop_down_outlined)
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 160,
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 31,
                                  height: 31,
                                  color: Colors.lightBlue.shade100,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        width: 19, 'assests/fi_10466386.png'),
                                  )),
                              SizedBox(height: 5),
                              Text(
                                'Total Bookings',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text('21',
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: black,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text('13 %',
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.green,
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text('Than last month',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: black,
                                  ))
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 160,
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 31,
                                  height: 31,
                                  color: Colors.lightBlue.shade100,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        width: 19, 'assests/Vector (8).png'),
                                  )),
                              SizedBox(height: 5),
                              Text(
                                'Your Reviews',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text('21',
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: black,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text('13 %',
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.green,
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text('Than last month',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: black,
                                  ))
                            ]),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 160,
                  height: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 31,
                              height: 31,
                              color: Colors.lightBlue.shade100,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                    width: 19, 'assests/Vector (9).png'),
                              )),
                          SizedBox(height: 5),
                          Text(
                            'Coupon Discounts',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('21',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: black,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('13 %',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.green,
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Text('Than last month',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: black,
                              ))
                        ]),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
