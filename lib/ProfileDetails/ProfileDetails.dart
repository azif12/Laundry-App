import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: profiledetailsbacgroundcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Profile Details',
                          style: GoogleFonts.dmSans(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CircleAvatar(
                      radius: 50, child: Image.asset('assests/Ellipse 136.png')),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'John Doe',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add Email ID',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '91825559799',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 150),
                  SizedBox(
                    width: 350,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Save',
                          style: TextStyle(fontSize: 16, color: white)),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 350, left: 70),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                color: Colors.white, // Main content container
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: double.infinity, // Adjust width as needed
                                      height: 65,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.blue),
                                      ),
                                      padding: EdgeInsets.all(15),
                                      child: Center(
                                        child: Text(
                                          'Delete Profile Pic',
                                          style: GoogleFonts.dmSans(
                                            fontSize: 18,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity, // Adjust width as needed
                                      height: 65,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.blue),
                                      ),
                                      padding: EdgeInsets.all(15),
                                      child: Center(
                                        child: Text(
                                          'Add Profile Pic',
                                          style: GoogleFonts.dmSans(
                                            fontSize: 18,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 180,
                                right: 170,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.pop(context); 
                                    },
                                    backgroundColor: Colors.transparent, 
                                    child: Icon(Icons.cancel_outlined, color: black),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Image.asset('assests/Group 3198.png', width: 30),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
