import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/WIDGETS/Payment.dart';
import 'package:laundry_app/constant/constant.dart';

class ScreenOfferPage extends StatefulWidget {
  const ScreenOfferPage({super.key});

  @override
  State<ScreenOfferPage> createState() => _ScreenOfferPageState();
}

class _ScreenOfferPageState extends State<ScreenOfferPage> {
  bool check1 = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Scaffoldcolor,
      body: SingleChildScrollView(
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
                      image: Svg("assests/arrow-left.svg",
                      color: Colors.black
                      ),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text(
                  "Offers",
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: black,
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.6,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
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
                            SizedBox(width: 20.w),
                            Text(
                              "Free delivery on every order for \n6 months",
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            SizedBox(width: 20.w),
                            Text(
                              "₹499",
                              style: GoogleFonts.dmSans(
                                fontSize: 21.7.sp,
                                color: priceTextColorHome,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.7,
                            ),
                            Checkbox(
                              activeColor: backgroundColorBlue,
                              value: check1,
                              onChanged: (bool? value) {
                                setState(() {
                                  check1 = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Payment method",
                    style: GoogleFonts.dmSans(
                        color: pickupLocationTextColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 900,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  PaymentOption(
                    image: 'assests/empty-wallet.png',
                    label: "Credit Card",
                    color: paymentblueContainer.withOpacity(0.2),
                    textColor: pickupLocationTextColor,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  PaymentOption(
                    image: 'assests/Vector (6).png',
                    label: "UPI",
                    color: paymentblueContainer,
                    textColor: pickupLocationTextColor,
                  ),
                ],
              ),
            ),
          ],
        ),
),
);
}
}