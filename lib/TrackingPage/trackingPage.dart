import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class OrderTracking extends StatelessWidget {
  const OrderTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 14),
                Container(
                  width: MediaQuery.of(context).size.width / 12,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/black_arrow_left.png"))),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text(
                  "Tracking",
                  style: GoogleFonts.dmSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: gridColor),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Text(
              "Id: 152589",
              style: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: blackColor),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("Assets/order_trackingimage.png"))),
            ),
            Text(
              "20 min",
              style: GoogleFonts.dmSans(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: trackingpageTextColor),
            ),
            Text(
              "Estimated delivery time",
              style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: trackingpageTextColor2),
            ),
            Gap(MediaQuery.of(context).size.height / 20),
            Row(
              children: [
                Gap(MediaQuery.of(context).size.width / 10),
                Text(
                  "Order Status",
                  style: GoogleFonts.dmSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: blackColor),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, top: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "Assets/tracking_scheduledimage.png",
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Apr 03",
                            style: GoogleFonts.dmSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: trackingpageTextColor2),
                          ),
                          Row(
                            children: [
                              Gap(28),
                              Text(
                                "Scheduled",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage("Assets/tracking_pickupimage.png"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Apr 04",
                            style: GoogleFonts.dmSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: trackingpageTextColor2),
                          ),
                          Row(
                            children: [
                              Gap(28),
                              Text(
                                "Picked up",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage("Assets/tracking_wasingimage.png"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Apr 05",
                            style: GoogleFonts.dmSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: trackingpageTextColor2),
                          ),
                          Row(
                            children: [
                              Gap(28),
                              Text(
                                "Washing",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage("Assets/tracking_deliveryimage.png"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Apr 06",
                            style: GoogleFonts.dmSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: trackingpageTextColor2),
                          ),
                          Row(
                            children: [
                              Gap(28),
                              Text(
                                "Out for delivery",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
     ),
);
}
}