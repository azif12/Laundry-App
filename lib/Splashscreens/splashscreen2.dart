import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/Loginpage/login.dart';
import 'package:laundry_app/constant/constant.dart';

class SplashSecond extends StatefulWidget {
  const SplashSecond({super.key});

  @override
  State<SplashSecond> createState() => _SplashSecondState();
}

class _SplashSecondState extends State<SplashSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 58.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.dmSans(
                      color: white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 27.w,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 32.w,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.28,
                  height: MediaQuery.of(context).size.height / 3.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Svg('assests/Group 1139.svg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 54.h,
            ),
            Text(
              'Get your Laundry and\nDry cleaning in 24hours',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'A convenient laundry solution that\nhelps protect the environment',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 162.w,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 14,
                  height: MediaQuery.of(context).size.height / 80,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: circleColor,
                ),
                SizedBox(
                  width: 8.w,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: circleColor,
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 231.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assests/image.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
