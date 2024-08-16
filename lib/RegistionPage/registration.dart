import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/RegistionPage/API/service.dart';
import 'package:laundry_app/constant/constant.dart';
import 'package:laundry_app/Loginpage/login2.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late String _userName, _email, _password;
  late int _phoneNumber;
  final _formKey = GlobalKey<FormState>();

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
          Positioned(
            top: 30.h,
            left: 16.w,
            child: Icon(
              Icons.arrow_back,
              color: white,
              size: 30.sp,
            ),
          ),
          Positioned(
            top: 120.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Hey There !\n Welcome',
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
                          hintText: 'Enter Name',
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
                          if (value!.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        onSaved: (value) => _userName = value!,
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        style: TextStyle(
                          color: black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: white,
                          hintText: 'Enter your Email ID or Phone Number',
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
                          if (value!.isEmpty) {
                            return 'Please Enter email';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please Enter valid email';
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value!,
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
                          hintText: 'Enter your Password',
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
                          if (value!.isEmpty) {
                            return 'Please Enter  password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value!,
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
                          hintText: 'PhoneNumber',
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
                          if (value!.isEmpty) {
                            return 'Please Enter email';
                          }
                          if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                            return 'Please enter a valid 10-digit phone number';
                          }
                          return null;
                        },
                        onSaved: (value) => _phoneNumber = int.parse(value!),
                      ),
                      SizedBox(height: 13.h),
                      SizedBox(
                        width: 340.w,
                        height: 55.h,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Provider.of<UserProvider>(context, listen: false)
                                  .registerUser(_userName, _email, _password,
                                      _phoneNumber)
                                  .then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Registration successful!'),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                                // Navigate to the new screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginSecondPage()), 
                                );
                              }).catchError((error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Registration failed: $error'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              });
                            }
                          },
                          child: Text(
                            'Register',
                            style: GoogleFonts.dmSans(
                              color: maincolor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginSecondPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Log In',
                              style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
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
