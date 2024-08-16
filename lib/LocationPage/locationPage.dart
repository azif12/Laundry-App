import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class LocationPage extends StatefulWidget {
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
 void _showBottomSheet() {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset(
                      'assests/location.png',
                      width: 30,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Dammam',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Apartment/building/flat name',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('assests/buildings.svg'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Floor number',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: SvgPicture.asset('assests/buliding.svg'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Contact details',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('assests/call.svg'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 15),
                  Text('Save For', style: TextStyle(color: Colors.black)),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 65,
                      height: 32,
                      child: Center(child: Text('Home', style: TextStyle(color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), 
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 65,
                      height: 32,
                      child: Center(child: Text('Office', style: TextStyle(color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), 
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 65,
                      height: 32,
                      child: Center(child: Text('Other', style: TextStyle(color: Colors.black))),
                    ),
                  ),
                ],
              ),
             Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height:MediaQuery.of(context).size.height / 11,
                  child: ElevatedButton(
                    onPressed: _showBottomSheet,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assests/Group.svg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        iconSize: 50,
                        icon: Image.asset('assests/Group 3146.png', width: 50),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          width: 165,
                          child: ElevatedButton(onPressed: (){}, child: Row(
                            children: [
                              Image.asset(
                                width: 20,
                                'assests/location.png'),
                                SizedBox(width: 4),
                              Text('Edit on Map', style: TextStyle(fontSize: 15,color: blue),),
                            ],
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: 'Search for your location',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 11.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    '319 Cross, between Hufuf and,Al\nKhob...',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Image.asset('assests/Group 1049.png', width: 30),
                    SizedBox(height: 10),
                    Text(
                      'Move the pin to adjust',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: ElevatedButton(
                    onPressed: _showBottomSheet,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
