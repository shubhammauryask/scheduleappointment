import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduleappointment/Screens/Home/AppointmentAnalysis.dart';
import 'package:scheduleappointment/Screens/Home/FeedbackPaymentAnalysis.dart';
import 'package:scheduleappointment/Screens/Home/PatientAnalysis.dart';
import 'package:scheduleappointment/Screens/Home/PaymentAnalysis.dart';
import 'package:scheduleappointment/Screens/Home/superadminProfile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Color(0xFFA866DC), //Color(0xFF711AC5)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 20, top: 48),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/Ellipse 768.png',
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Color(0xFF740AC7),
                                ),
                                child: Text(
                                  'Super Admin',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Dr. Ajit Bhalla',
                                style: GoogleFonts.arimo(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'General physicist',
                                style: GoogleFonts.arimo(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Khed Clinic',
                                style: GoogleFonts.arimo(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SuperAdminProfile()));
                                },
                                child: Image.asset(
                                  'assets/images/Editbutton.png',
                                  width: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: InkWell(
                            onTap:(){ Navigator.pop(context);
                              },
                              child: Icon(
                            Icons.arrow_back,
                            size: 40,
                            color: Colors.white,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Ellipse 769.png',
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Text(
                                'My Clinic',
                                style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Add.png',
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.23,
                              child: Text(
                                'Add another profile',
                                style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 8,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Upgrade to ',
                          style: GoogleFonts.arimo(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                      TextSpan(
                          text: ' HealTether+',
                          style: GoogleFonts.arimo(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Color(0xFF029E85),
                          ))
                    ])),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>PatientAnalysis()));
                      },
                      child: Text(
                        'Patients Analysis',
                        style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>AppointmentAnalysis()));
                      },
                      child: Text(
                        'Appointments Analysis',
                        style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentAnalysis()));
                      },
                      child: Text(
                        'Payments Analysis',
                        style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Settings',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Logout',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Help',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPaymentAnaylsis()));
                       },
                      child: Text(
                        'Feedback',
                        style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Color(0xFF740AC7),
                    height: 10,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Privacy policy.',
                        style: GoogleFonts.arimo(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Terms and conditions.',
                        style: GoogleFonts.arimo(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Text(
                    '© Copyright 2023 HealTether. All Rights Reserved',
                    style: GoogleFonts.arimo(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF757575),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
