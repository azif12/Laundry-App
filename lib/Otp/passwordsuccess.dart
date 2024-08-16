import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/Loginpage/login2.dart';
import 'package:laundry_app/WIDGETS/backgroundimage.dart';
import 'package:laundry_app/constant/constant.dart';

class PasswordSuccessPage extends StatelessWidget {
  const PasswordSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height;
    final width = mediaQuery.size.width;

    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Positioned(
            top: height / 5,
            right: width / 5,
            child: Image(
              height: height / 10,
              width: width / 1.7,
              image: Svg('assests/Successmark.svg'),
            ),
          ),
          Positioned(
            top: height / 3,  
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Password Changed',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color: white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.02), 
                  Text(
                    'Your Password has been\nChanged Successfully!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color: white,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: height / 2,
            right: width / 10,
            child: Column(
              children: [
                Container(
                  width: width / 1.25,
                  height: height / 14,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(140.r),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSecondPage()));
                      },
                      child: Text(
                        'Back to Login',
                        style: GoogleFonts.dmSans(
                          color: maincolor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
