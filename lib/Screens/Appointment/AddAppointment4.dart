import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/home.dart';
import '../Notification/notifications.dart';
import '../Chat/Chat.dart';

class AddAppointment4 extends StatefulWidget {
  AddAppointment4({super.key});

  @override
  State<AddAppointment4> createState() => _AddAppointment4State();
}
  var valueTicket = 10;
   int _page = 0;

class _AddAppointment4State extends State<AddAppointment4> {
  void pageState() {
    if(_page  == 0){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }else if(_page == 1){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAppointment4()));
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
        padding: EdgeInsets.only(left: 17,right: 17,top: 17),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/Frame 260923.png'),
            SizedBox(height: 34),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/charm_circle-tick.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'The appointment has been scheduled successfully.',
                      style: GoogleFonts.arimo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Stack (
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment(0,0),
                          child: Image.asset(
                            'assets/images/Polygon 8.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0,0),
                          child: Image.asset(
                        'assets/images/Polygon 9.png',
                        height: 120,
                        width: 120,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Align(
                          alignment: Alignment(0,0),
                          child: Text(valueTicket.toString(),style: GoogleFonts.arimo(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28,
                          ),),
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
                SizedBox(height: 28,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF9F4FE),
                      boxShadow: [
                      BoxShadow(
                      color: Color(0xFFE2C2FA), // Color of the shadow
                      offset: Offset(1, 3), // Offset of the shadow (horizontal, vertical)
                      blurRadius: 6, // Blur radius of the shadow
                      spreadRadius: 0, // Spread radius of the shadow
                    ),
                    ],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Appointment details',style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF006270)
                        ),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Patient name :',style: GoogleFonts.arimo(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                            ),),
                            Text('Ramesh Patel',style: GoogleFonts.arimo(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF006270)
                            ),),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Mode :',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                            ),),
                            Text(' Physical ',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF006270)
                            ),),
                            Spacer(),
                            Text('Date :',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                            ),),
                            Text(' 1 July, 2023',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF006270)
                            ),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Slot no. :',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                            ),),
                            Text(' 2',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF006270)
                            ),),
                            Spacer(),
                            Text('Time :',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color:Colors.black
                            ),),
                            Text(' 14:20 - 14:40',style: GoogleFonts.arimo(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF006270)
                            ),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Text(
                            'Appointment Booked on 1 July, 2023 ',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6C6C6C),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.13,
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
                          backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF009394)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7), // Set the radius to 0 for a rectangular shape
                            ),
                          ),
                        ),
                        onPressed: (){
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Send on ',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),),
                            Image.asset('assets/images/ion_logo-whatsapp.png',height: 20,width: 20,color: Colors.white,),
                          ],
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.13,

                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white  ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7), // Set the radius to 0 for a rectangular shape
                            ),
                          ),
                        ),
                        onPressed: (){

                        },
                        child: Text('Back to home',style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),)
                    ),
                  ),
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
