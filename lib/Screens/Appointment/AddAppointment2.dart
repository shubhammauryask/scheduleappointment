import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/home.dart';
import '../Notification/notifications.dart';
import '../Chat/Chat.dart';
import 'AddAppointment3.dart';
import 'AddAppointment4.dart';

class AddAppointment2 extends StatefulWidget {
  AddAppointment2({super.key});

  @override
  State<AddAppointment2> createState() => _AddAppointment2State();
}

class _AddAppointment2State extends State<AddAppointment2> {
  @override
  var mobileNumber = TextEditingController();

  var name = TextEditingController();

  var age = TextEditingController();

  var birthDate = TextEditingController();

  var gender = TextEditingController();
  String  imageCheck = 'assets/images/Rectangle 1247.png';

  int _page = 1;
  void pageState() {
    if(_page  == 0){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }else if(_page == 1){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAppointment2()));
    }else if(_page == 2){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WhatsApp()));
    }else if(_page == 3){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>notificationPage()));
    }
  }

  Widget build(BuildContext context) {
    mobileNumber.text = '8965132654';
    name.text = 'Jane Doe';
    birthDate.text = '24-05-1986';
    age.text = '37';
    gender.text = 'Female';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
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
            child: Image.asset('assets/images/iconoir_cancel.png',height: 28,width: 28,color: Colors.black,),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
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
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Color(0xFF00E0C7),
                            ),
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
                    onTap: (){
                      setState(() {
                        if(imageCheck == 'assets/images/charm_circle-tick.png' ){
                          imageCheck = 'assets/images/Rectangle 1247.png';
                        }else{
                          imageCheck = 'assets/images/charm_circle-tick.png';
                        }
                      });

                    },
                    child: Image.asset(
                      imageCheck,
                      height: 24,
                      width: 24,
                    ),
                  ),
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
                height: 100,
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
                height: 10,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddAppointment3()));
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
            color: Colors.white,
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
