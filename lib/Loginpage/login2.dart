import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/Loginpage/Login%20Api/LoginProvider.dart';
import 'package:laundry_app/Loginpage/login.dart';
import 'package:laundry_app/Otp/otp.dart';
import 'package:laundry_app/RegistionPage/registration.dart';
import 'package:laundry_app/WIDGETS/backbutton.dart';
import 'package:laundry_app/constant/constant.dart';
import 'package:laundry_app/forgetpassword/forgetpassword2.dart';
import 'package:provider/provider.dart';

class LoginSecondPage extends StatefulWidget {
  @override
  State<LoginSecondPage> createState() => _LoginSecondPageState();
}

class _LoginSecondPageState extends State<LoginSecondPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Backbutton(
            onBackPressed: () {
              print('Navigating to LoginScreen');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
          Positioned(
            top: 180.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Welcome Back! Glad\nTo See You, Again!',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      TextFormField(
                        style: TextStyle(
                          color: black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: white,
                          hintText: 'Enter your email or Phone number',
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter email';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please Enter valid email';
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value,
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        style: TextStyle(
                          color: black,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: white,
                          hintText: 'Enter your password',
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value,
                      ),
                      SizedBox(height: 13.h),
                      SizedBox(
                          width: 340.w,
                          height: 55.h,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Provider.of<LoginProvider>(context, listen: false)
                                    .LoginUser(
                                  _email!,
                                  _password!,
                                )
                                    .then((_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Login successful!'),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                  // Navigate to the new screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OTPScreen()),
                                  );
                                }).catchError((error) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Login failed: $error'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                });
                              }
                            },
                            child: Text('Log in',
                                style: GoogleFonts.dmSans(
                                  color: maincolor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                          )),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgetpasswordSecond()));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.dmSans(
                              color: white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Flexible(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RegistrationPage();
                                }));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Don’t have an account?',
                                    style: GoogleFonts.dmSans(
                                      color: white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Register Now',
                                    style: GoogleFonts.dmSans(
                                        color: white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
