import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/Loginpage/login2.dart';
import 'package:laundry_app/Otp/otpsecond.dart';
import 'package:laundry_app/WIDGETS/backgroundimage.dart';
import 'package:laundry_app/constant/constant.dart';

class ForgetpasswordSecond extends StatelessWidget {
  const ForgetpasswordSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: white,
        ),
        backgroundColor: maincolor,
      ),
      body: Stack(
        children: [
          BackgroundImage(),
          Positioned(
            top: MediaQuery.of(context).size.height / 7,
            left: MediaQuery.of(context).size.width / 6.6,
            child: Text(
              'Forgot Password?',
              style: GoogleFonts.dmSans(
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: MediaQuery.of(context).size.width / 16,
            child: Text(
              "Don't worry! It occurs. Please enter the\n email or phone number linked with your\n account",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            left: MediaQuery.of(context).size.width / 10,
            right: MediaQuery.of(context).size.width / 10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                      fillColor: white,
                      filled: true,
                      hintText: 'Enter your email or Phone number',
                      hintStyle: GoogleFonts.dmSans(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: white, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  SizedBox(
                    width: 290.w,
                    height: 48.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OTPSecondPage();
                        }));
                      },
                      child: Text(
                        'Send OTP',
                        style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: maincolor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 72,
            child: Row(
              children: [
                Text(
                  'Remember Password ? ',
                  style: GoogleFonts.dmSans(
                    color: white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginSecondPage();
                    }));
                  },
                  child: Text(
                    'Log in',
                    style: GoogleFonts.dmSans(
                      color: white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
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