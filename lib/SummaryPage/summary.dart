import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/BookingPage/booking.dart';
import 'package:laundry_app/Offerspage/offers.dart';
import 'package:laundry_app/Upipage/upipage.dart';
import 'package:laundry_app/constant/constant.dart';
import 'package:laundry_app/creditcardpage/creditcard.dart';

class ScreenSummary extends StatefulWidget {
  const ScreenSummary({super.key});

  @override
  State<ScreenSummary> createState() => _ScreenSummaryState();
}

class _ScreenSummaryState extends State<ScreenSummary> {
  List<String> time = [
    "07:00 AM- 08:00 AM",
    "08:00 AM- 09:00 AM",
    "09:00 AM- 10:00 AM",
    "10:00 AM- 11:00 AM",
  ];
  String _selectedItem = "07:00 AM- 08:00 AM";
  String gender = "1";
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.start,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 16),
                Container(
                  width: MediaQuery.of(context).size.width / 12,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assests/arrow-left.png"))),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text(
                  "Summary",
                  style: GoogleFonts.dmSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: gridColor),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 333.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pickup Point",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: backgroundColorBlue),
                        ),
                        Icon(Icons.add)
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 301.w,
                          height: 97.h,
                          margin: EdgeInsets.only(top: 8.h),
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          decoration: BoxDecoration(
                            border: Border.all(color: textcolor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Home",
                                    style: GoogleFonts.dmSans(
                                        color: blackColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Icon(
                                    Icons.border_color,
                                    color: blackColor,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "19 Cross, between Hufuf and, Khobar\n676552, India \n+91 8415698625",
                                style: GoogleFonts.dmSans(
                                    color: blackColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 13,
                ),
                Text(
                  "Pick Up",
                  style: GoogleFonts.dmSans(
                      color: backgroundColorBlue,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: gridColor),
                        borderRadius: BorderRadius.circular(10)),
                    width: 145.w,
                    height: 48.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: gridColor,
                        ),
                        Text(
                          "DD-MM-YY",
                          style: GoogleFonts.dmSans(
                              color: gridColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: gridColor,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: textcolor),
                        borderRadius: BorderRadius.circular(10)),
                    width: 145.w,
                    height: 48.h,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: _selectedItem,
                        items: time.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                value,
                                style: GoogleFonts.dmSans(
                                    color: textcolor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem = newValue!;
                          });
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.expand_more,
                            color: textcolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 18),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 13,
                    ),
                    Text(
                      "Delivery",
                      style: GoogleFonts.dmSans(
                          color: backgroundColorBlue,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    RadioListTile(
                      activeColor: backgroundColorBlue,
                      title: Text(
                        "19 Cross, between Hufuf and, Khobar 676552, India | +91 8415698625",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      value: "1",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: backgroundColorBlue,
                      title: Text(
                        "Collect from store",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      value: "2",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: [
                      Text(
                        "Expected Delivery :",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        " 21 Dec 2024",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Express Delivery",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      CupertinoSwitch(
                        activeColor: backgroundColorBlue,
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 13,
                    ),
                    Text(
                      "Coupon",
                      style: GoogleFonts.dmSans(
                          color: backgroundColorBlue,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: backgroundColorBlue,
                        ),
                        width: 145.w,
                        height: MediaQuery.of(context).size.width / 8.5,
                        child: Center(
                          child: Text(
                            "APPLY CODE",
                            style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 25,
                      child: Image(image: AssetImage("assests/Vector.png"))),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  Text(
                    "Offers",
                    style: GoogleFonts.dmSans(
                        color: backgroundColorBlue,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenOfferPage ()));
                },
                child: Container(
                  color: white,
                  height: 120,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Free delivery on every orders for \n6 months",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14.sp,
                                      color: gridColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "₹499",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 21.7.sp, color: gridColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Receipt",
                        style: GoogleFonts.dmSans(
                            color: backgroundColorBlue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shirt",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "x2",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹40",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shirt",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "x2",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹40",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shirt",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "x2",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹40",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Charge",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹50",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹50",
                        style: GoogleFonts.dmSans(
                            color: gridColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Coupon Reduction",
                        style: GoogleFonts.dmSans(
                            color: couponCOlor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹50",
                        style: GoogleFonts.dmSans(
                            color: couponCOlor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "₹110",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Payment method",
                        style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: MediaQuery.of(context).size.height / 13.5,
                                width: MediaQuery.of(context).size.width / 6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    // color: codcolor,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assests/empty-wallet.png'))),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => ConfirmBooking())
                                );
                              }
                            ),
                            Text(
                              "COD",
                              style: GoogleFonts.dmSans(
                                  color: blackColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: blackColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: MediaQuery.of(context).size.height / 13.5,
                                width: MediaQuery.of(context).size.width / 6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: DecorationImage(
                                        image: AssetImage("assests/card.png"))),
                              ),
                                onTap: () {
                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => CreditScreen())
                                );
                              }
                            ),
                            Text(
                              "Credit Card",
                              style: GoogleFonts.dmSans(
                                  color: blackColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: blackColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: MediaQuery.of(context).size.height / 13.5,
                                width: MediaQuery.of(context).size.width / 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assests/Vector (6).png')),
                                  color: paymentCOlor,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => UpiScreen())
                                );
                              }
                            ),
                            Text(
                              "UPI",
                              style: GoogleFonts.dmSans(
                                  color: blackColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: blackColor,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
