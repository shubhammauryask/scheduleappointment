import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Appointments/Appointment.dart';
import '../Chat/Chat.dart';
import '../Home/home.dart';
import '../Notification/notifications.dart';


class StaffDetails extends StatefulWidget {
  const StaffDetails({super.key});

  @override
  State<StaffDetails> createState() => _StaffDetailsState();
}

class _StaffDetailsState extends State<StaffDetails> {
  int _page = 0;
  @override
  void pageState() {
    if(_page  == 0){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }else if(_page == 1){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Appointment()));
    }else if(_page == 2){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WhatsApp()));
    }else if(_page == 3){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>notificationPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
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
          'Manage Staff',
          style: GoogleFonts.arimo(
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
            image: AssetImage(
                'assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(
          left: 17,
          right: 17,
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                      color: Colors.transparent //Color(0xFF711AC5)
                      ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 20, top: 48),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/Ellipse 759.png',
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Color(0xFF740AC7),
                                  ),
                                  child: Text(
                                    'Admin',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Dr. Kim Jones',
                                  style: GoogleFonts.arimo(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'MBBS, DLO, MS(ENT)',
                                  style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'ENT specialist',
                                  style: GoogleFonts.arimo(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF740AC7)),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xFF03BF9C)),
                                  child: Text(
                                    'Edit Profile',
                                    style: GoogleFonts.arimo(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appointment Slots',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Birthday',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '4/12/1993',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        '4/12/1993',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '30',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Gender',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Male',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact DETAILS',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Mobile',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '+91 986 563214',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child:Image.asset('assets/images/ion_logo-whatsapp.png',height: 15,width: 15,)
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '+91 986 563214',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Email',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'rameshpatel@gmail.com',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Address',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Plot No. 4-75/1, Madhavi Nagar,Opposite BHEL R(&)D Gate, BalaNagar Hyderabad, Telangana, 500037.',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank DETAILS',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'UPI ID',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'ram214@ybl',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Bank',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Indian Bank',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'A/c no.',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        '5213 5123 6554 5894',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'IFSC code',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'IDBI000H013',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),     SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Ram Menon',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Account Holder',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

              ]),
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
