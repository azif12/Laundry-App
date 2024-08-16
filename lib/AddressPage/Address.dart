import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilebackground2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(children: [
                Icon(Icons.arrow_back, color: black, size: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    'Address',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: black,
                    ),
                  ),
                )
              ]),
              SizedBox(height: 20),
              Container(
                width: 333,
                height: 124,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Home',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: black,
                              )),
                          Image.asset(width: 24, 'assests/Frame 8308 (1).png')
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(width: 14, 'assests/location1.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                                '19 Cross between Hufuf and Al\nKhobar 33446,Saudi Arabia',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: black,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(width: 14, 'assests/call.png'),
                          SizedBox(width: 5),
                          Text(
                            '+966 8415698625',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 333,
                height: 124,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Office',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: black,
                              )),
                          Image.asset(width: 24, 'assests/Frame 8308 (1).png')
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(width: 14, 'assests/location1.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                                '19 Cross between Hufuf and Al\nKhobar 33446,Saudi Arabia',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: black,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(width: 14, 'assests/call.png'),
                          SizedBox(width: 5),
                          Text(
                            '+966 8415698625',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              // SizedBox(height: 100),
              SizedBox(
                width: 355,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  child: Text('+Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
