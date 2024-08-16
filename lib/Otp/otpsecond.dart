import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';
import 'package:laundry_app/forgetpassword/PasswordChange.dart';
import 'package:pinput/pinput.dart';

class OTPSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: maincolor,
          ),
          Positioned(
            top: height * 0.04,
            left: width * 0.04,
            child: Icon(
              Icons.arrow_back,
              color: white,
              size: width * 0.08,
            ),
          ),
          Positioned(
            top: height * 0.15,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'We Have Sent You An OTP',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color: white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.28,
            left: 0,
            right: 0,
            child: Center(
              child: Pinput(
                length: 4,
                defaultPinTheme: PinTheme(
                  width: width * 0.1,
                  height: height * 0.06,
                  textStyle: TextStyle(
                    fontSize: width * 0.06,
                    color: black,
                  ),
                  decoration: BoxDecoration(
                    color: white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(width * 0.012),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: width * 0.1,
                  height: height * 0.06,
                  textStyle: TextStyle(
                    fontSize: width * 0.06,
                    color: black,
                  ),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(width * 0.012),
                  ),
                ),
                submittedPinTheme: PinTheme(
                  width: width * 0.1,
                  height: height * 0.06,
                  textStyle: TextStyle(
                    fontSize: width * 0.06,
                    color: black,
                  ),
                  decoration: BoxDecoration(
                    color: white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(width * 0.012),
                  ),
                ),
                showCursor: true,
              ),
            ),
          ),
          Positioned(
            top: height * 0.41,
            left: 0,
            right: 0,
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't receive OTP? ",
                  style: GoogleFonts.dmSans(
                    color: white,
                    fontSize: width * 0.035,
                  ),
                  children: [
                    TextSpan(
                      text: 'RESEND OTP',
                      style: GoogleFonts.dmSans(
                        color: white,
                        fontSize: width * 0.035,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.065,
            left: width * 0.06,
            right: width * 0.06,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.075),
                ),
                padding: EdgeInsets.symmetric(vertical: height * 0.02),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordChange()));
              },
              child: Text(
                'Verify',
                style: GoogleFonts.dmSans(
                  color: maincolor,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
