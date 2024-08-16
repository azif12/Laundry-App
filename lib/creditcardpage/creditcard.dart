import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class CreditScreen extends StatefulWidget {
  CreditScreen({super.key});

  @override
  State<CreditScreen> createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  bool check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 12,
                    height: MediaQuery.of(context).size.height / 23,
                    decoration: BoxDecoration(
                      color: black,
                        image: DecorationImage(
                            image: AssetImage(
                      "assests/arrow-left.png",
                    ))),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text(
                  "Credit Card",
                  style: GoogleFonts.dmSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: black),
                )
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 6.9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assests/Group 3131.png'))),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 6.9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assests/Group 3132.png'))),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 138),
              child: Text(
                'Or add new card details',
                style: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: black),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Card holder name',
                  contentPadding: EdgeInsets.all(25),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Card number',
                  contentPadding: EdgeInsets.all(25),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        contentPadding: EdgeInsets.all(25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 12.w), // Add some space between the text fields
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Exp',
                        contentPadding: EdgeInsets.all(25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: backgroundColorBlue,
                        value: check1,
                        onChanged: (bool? value) {
                          setState(() {
                            check1 = value!;
                          });
                        },
                      ),
                      Text(
                        'Save for future',
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: blackColor),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 74.h,
            ),
            SizedBox(
              width: 333.w,
              height: 64.h,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      backgroundColorBlue,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Pay ₹499',
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: whiteColor),
                  )),
            )
          ],
        ),
  ),
);
}
}