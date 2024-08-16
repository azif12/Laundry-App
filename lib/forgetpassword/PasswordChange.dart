import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/Otp/passwordsuccess.dart';
import 'package:laundry_app/RegistionPage/registration.dart';
import 'package:laundry_app/constant/constant.dart';

class PasswordChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: maincolor,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 350,
            child: Image.asset(
              'assests/Frame (1).png',
            ),
          ),
          Positioned(
            top: 30.h,
            left: 16.w,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.sp,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 140.h,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Create New Password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Text(
                      'Your new password must be unique from those previously used',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
             //physics: NeverScrollableScrollPhysics(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Padding(
                  padding: EdgeInsets.only(top: 300.h),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter your new password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.h,
                            horizontal: 20.w,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(Icons.visibility),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.h,
                            horizontal: 20.w,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      SizedBox(
                        width: double.infinity,
                        height: 55.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordSuccessPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ), backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'Reset Password',
                            style: GoogleFonts.dmSans(
                              color: maincolor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Text(
                                "Didn't receive code?",
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegistrationPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Resend',
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
