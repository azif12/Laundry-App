import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/Loginpage/login2.dart';
import 'package:laundry_app/RegistionPage/registration.dart';
import 'package:laundry_app/WIDGETS/backgroundimage.dart';
import 'package:laundry_app/constant/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            right: MediaQuery.of(context).size.width / 5,
            child: Image(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 1.7,
              image: Svg('assests/Group 1090 (1).svg'),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 20,
            right: MediaQuery.of(context).size.height / 20,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 14,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(140.r),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1,
                      height: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginSecondPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                        ),
                        child: Text(
                          'Log In',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: maincolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 14,
                  decoration: BoxDecoration(
                    color: maincolor,
                    border: Border.all(width: 1, color: white),
                    borderRadius: BorderRadius.circular(140.r),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1,
                      height: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: maincolor,
                          elevation: 0,
                        ),
                        child: Text(
                          'Register',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
