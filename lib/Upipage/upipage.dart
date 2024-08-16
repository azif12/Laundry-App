import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class UpiScreen extends StatefulWidget {
  const UpiScreen({super.key});

  @override
  State<UpiScreen> createState() => _UpiScreenState();
}

bool check = false;

class _UpiScreenState extends State<UpiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
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
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text(
                  "UPI",
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 6.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assests/Group 3131.png'),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 6.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assests/Group 3132 (1).png'),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 220,
              ),
              child: Text(
                'Or add UPI ID',
                style: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: blackColor,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter UPI ID',
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: backgroundColorBlue,
                        value: check,
                        onChanged: (bool? value) {
                          setState(() {
                            check = value!;
                          });
                        },
                      ),
                      Text(
                        'Save for future',
                        style: GoogleFonts.dmSans(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 140.h,
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
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
    ),
);}
}