import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 135.h,
              child: Container(
                color: profilebackground,
                height: 100.h,
                width: 50.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 210.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Color(0xFFECF3F6),
                    height: 100.h,
                    width: 50.w,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: profilebackground,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30, left: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assests/Ellipse 137.png'),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '+91 8129862588',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        'Edit profile',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: blue,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(Icons.edit, color: blue, size: 16),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  height: 95,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 159,
                          height: 60,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: profilesecond,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assests/Vector (7).png',
                                      width: 45),
                                  Text(
                                    'History',
                                    style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          width: 159,
                          height: 60,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: profilesecond,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assests/messages-2.png',
                                      width: 45),
                                  SizedBox(width: 8),
                                  Text(
                                    'Contact us',
                                    style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFECF3F6),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50)),
                    ),
                    child: ListView(
                      padding: EdgeInsets.all(20),
                      children: [
                        ListTile(
                          leading:
                              Image.asset(width: 21, 'assests/Group 3181.png'),
                          title: Text('Dashboard'),
                          trailing: Icon(Icons.arrow_forward_ios, color: black),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Image.asset(width: 21, 'assests/buildings.png'),
                          title: Text('Address'),
                          trailing: Icon(Icons.arrow_forward_ios, color: black),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Image.asset(width: 25, 'assests/messages.png'),
                          title: Text('FAQ'),
                          trailing: Icon(Icons.arrow_forward_ios, color: black),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Image.asset(width: 25, 'assests/people.png'),
                          title: Text('About Us'),
                          trailing: Icon(Icons.arrow_forward_ios, color: black),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Image.asset(width: 25, 'assests/fi_8013078.png'),
                          title: Text('Reviews'),
                          trailing: Icon(Icons.arrow_forward_ios, color: black),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Image.asset(width: 25, 'assests/security.png'),
                          title: Text('Privacy policy'),
                          trailing: Icon(Icons.arrow_forward_ios, color: black),
                          onTap: () {},
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading:
                                Image.asset(width: 25, 'assests/logout.png'),
                            title: Text('Logout'),
                            trailing:
                                Icon(Icons.arrow_forward_ios, color: black),
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 230,
                                      width: 400,
                                      child: Column(children: [
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 50),
                                            Text('Are You Sure',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 35,
                                                    color: black,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Image.asset(
                                                      width: 40,
                                                      'assests/Frame 8307.png')),
                                            )
                                          ],
                                        ),
                                        Text('Do You want to Log out ?',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 15,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30),
                                              child: SizedBox(
                                                width: 150,
                                                height: 70,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text('No',style: TextStyle(color: Colors.white),),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .blue, 
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 50),
                                              child: SizedBox(
                                                width: 150,
                                                height: 70,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text('Yes, Logout',style: TextStyle(color: Colors.white)),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Redlogout
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ]),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 40),
              child: Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  width: 350,
                  height: 110,
                  'assests/Frame (13).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
