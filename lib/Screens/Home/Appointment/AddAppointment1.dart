import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduleappointment/Screens/Home/home.dart';

import '../../../Appointments/Appointment.dart';
import '../../Chat/Chat.dart';
import '../../Notification/notifications.dart';
import 'AddAppointment2.dart';
import 'AddAppointment3.dart';
import 'AddAppointment4.dart';


class AddAppointment1 extends StatefulWidget {
  AddAppointment1({super.key});

  @override
  State<AddAppointment1> createState() => _AddAppointment1State();
}

class _AddAppointment1State extends State<AddAppointment1> {
  var visibility = false;
  var mobileNumber = TextEditingController();
  var name = TextEditingController();
  var age = TextEditingController();
  var birthDate = TextEditingController();
  var gender = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String imageCheck = 'assets/images/Rectangle 1247.png';
  int _page = 0;
  void pageState() {
    if (_page == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else if (_page == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Appointment()));
    } else if (_page == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WhatsApp()));
    } else if (_page == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => notificationPage()));
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          DateTime.now(), // Initial date displayed when the picker opens
      firstDate: DateTime(2000), // Minimum allowable date
      lastDate: DateTime(2101), // Maximum allowable date
    );

    if (picked != null && picked != selectedDate) {
      // Do something with the selected date, e.g., update it in your state
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    birthDate.text = selectedDate.toString().split(" ")[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
            Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        title: Text(
          'Add Appointment',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              'assets/images/iconoir_cancel.png',
              height: 28,
              width: 28,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(left: 17, right: 17, top: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Property 1=Default.png',
                height: 8,
                width: 94,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Personal Details of the patient',
                style: GoogleFonts.arimo(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: mobileNumber,
                onChanged: (value) {
                  if (mobileNumber.text.length == 10) {
                    setState(() {
                      visibility = true;
                    });
                  }
                },
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                decoration: InputDecoration(
                    hintText: 'Mobile',
                    prefixText: '+91',
                    prefixStyle: TextStyle(
                      color:
                          Color(0xFF00E0C7), // Set the text color of the prefix
                      fontSize: 16, // Set the font size of the prefix
                      fontWeight:
                          FontWeight.bold, // Set the font weight of the prefix
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF6A798A))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF6A798A)))),
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF00E0C7),
                ),
                cursorColor: Color(0xFF6A798A),
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: visibility,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'The number is already present in the directory. Do you want to add new patient?',
                        style: GoogleFonts.arimo(
                            fontSize: 14, color: Color(0xFF6A798A)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF009394)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    7), // Set the radius to 0 for a rectangular shape
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAppointment2()));
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    7), // Set the radius to 0 for a rectangular shape
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              visibility = false;
                            });
                          },
                          child: Text(
                            'No',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF6A798A))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF6A798A)))),
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF00E0C7),
                  ),
                  cursorColor: Color(0xFF6A798A)),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextFormField(
                        controller: birthDate,

                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectDate(context);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 30,
                                  color: Color(0xFF00E0C7),
                                )),
                            hintText: 'Select Birthdate',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF6A798A))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF6A798A)))),
                        keyboardType: TextInputType.datetime,
                        style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF00E0C7),
                        ),
                        cursorColor: Color(0xFF6A798A)),
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: TextFormField(
                        controller: age,
                        inputFormatters: [LengthLimitingTextInputFormatter(3)],
                        decoration: InputDecoration(
                            suffixText: 'yrs',
                            hintText: 'Age',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF6A798A))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF6A798A)))),
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF00E0C7),
                        ),
                        cursorColor: Color(0xFF6A798A)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: gender,
                  decoration: InputDecoration(
                      hintText: 'Gender',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF6A798A))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF6A798A)))),
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF00E0C7),
                  ),
                  cursorColor: Color(0xFF6A798A)),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          if (imageCheck ==
                              'assets/images/charm_circle-tick.png') {
                            imageCheck = 'assets/images/Rectangle 1247.png';
                          } else {
                            imageCheck = 'assets/images/charm_circle-tick.png';
                          }
                        });
                      },
                      child: Image.asset(
                        imageCheck,
                        height: 24,
                        width: 24,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Virtual Consultation',
                    style: GoogleFonts.arimo(
                        fontSize: 16, fontWeight: FontWeight.normal),
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF00E0C7), // Color of the shadow
                        offset: Offset(1, 3), // Offset of the shadow (horizontal, vertical)
                        blurRadius: 6, // Blur radius of the shadow
                        spreadRadius: 0, // Spread radius of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF009394)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                7), // Set the radius to 0 for a rectangular shape
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (mobileNumber.text.length == 10 &&
                            age.text != null &&
                            birthDate != null &&
                            gender != null &&
                            name.text != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddAppointment4()));
                        }
                      },
                      child: Text(
                        'Schedule now',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.width * 0.15,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                7), // Set the radius to 0 for a rectangular shape
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (mobileNumber.text.length == 10) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddAppointment3()));
                        }
                      },
                      child: Text(
                        'Schedule for later',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_home.png',
                color: _page == 0 ? Colors.white : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/uis_schedule.png',
                color: _page == 1 ? Colors.white : Colors.black),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ion_logo-whatsapp.png',
                color: _page == 2 ? Colors.white : Colors.black),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_notifications.png',
                color: _page == 3 ? Colors.white : Colors.black),
            label: 'Notifications',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            pageState();
          });
        },
      ),
    );
  }
}
