import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/OrderIdBottomSheet/bottomsheet.dart';
import 'package:laundry_app/constant/constant.dart';

class OrderId extends StatelessWidget {
  const OrderId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: washinglistcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 12,
                    height: MediaQuery.of(context).size.height / 23,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assests/arrow-left.png"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text(
                    'Id:152589',
                    style: GoogleFonts.dmSans(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width / 1.1,
            //   height: MediaQuery.of(context).size.height / 8,
            //   decoration: BoxDecoration(
            //     color: whiteColor,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(right: 275),
            //         child: Text(
            //           'Status',
            //           style: GoogleFonts.dmSans(
            //             fontSize: 16.sp,
            //             color: backgroundColorBlue,
            //             fontWeight: FontWeight.w700,
            //           ),
            //         ),
            //       ),
            //       Container(
            //           width: MediaQuery.of(context).size.width / 1.1,
            //           height: 29.h,
            //           decoration: BoxDecoration(
            //               color: paymentCOlor.withOpacity(0.2),
            //               borderRadius: BorderRadius.circular(20.r)),
            //           child: Row(
            //             children: [
            //               SizedBox(
            //                 width: 10.w,
            //               ),
            //               Icon(
            //                 Icons.notifications,
            //                 color: paymentCOlor,
            //               ),
            //               SizedBox(
            //                 width: 4.w,
            //               ),
            //               Text(
            //                 'Booking Accepted',
            //                 style: GoogleFonts.dmSans(
            //                   fontSize: 14.sp,
            //                   color: paymentCOlor,
            //                   fontWeight: FontWeight.w500,
            //                 ),
            //               )
            //             ],
            //           ))
            //     ],
            //   ),
            // ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 240),
                    child: Text(
                      'Add Rating',
                      style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        color: backgroundColorBlue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  RatingBar.builder(
                    unratedColor: ratingcolor,
                    initialRating: 0,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.width / 2.3,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 275),
                    child: Text(
                      'Pickup',
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: backgroundColorBlue,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Text(
                      '19 Cross, between Hufuf and, Khobar \n676552, India \n+91 8415698625',
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp,
                          color: blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assests/calendar.png'))),
                        ),
                        Text('25-05-2023',
                            style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: textcolor,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assests/clock.png'))),
                        ),
                        Text('12:30pm',
                            style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: textcolor,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    backgroundColorBlue)),
                            onPressed: () {},
                            child: Text('Reschedule',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w700)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.width / 2.3,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 177),
                    child: Text(
                      'Delivery (Express)',
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: backgroundColorBlue,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Text(
                      '19 Cross, between Hufuf and, Khobar \n676552, India \n+91 8415698625',
                      style: GoogleFonts.dmSans(
                          fontSize: 14.sp,
                          color: blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assests/calendar.png'))),
                        ),
                        Text('25-05-2023',
                            style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: textcolor,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assests/clock.png'))),
                        ),
                        Text('12:30pm',
                            style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: textcolor,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    backgroundColorBlue)),
                            onPressed: () {},
                            child: Text('Reschedule',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w700)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 283.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r), color: whiteColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: Text('Receipt',
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            color: backgroundColorBlue,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shirt',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              'x2',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              '₹40',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'TShirt',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 7),
                              child: Text(
                                'x2',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              '₹40',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shorts',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 11),
                              child: Text(
                                'x2',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              '₹40',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Charge',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              '₹50',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tax',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              '₹50',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Text(
                              '₹110',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            BottomSheetWidget()
          ],
        ),
     ),
);
}
}