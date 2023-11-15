import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Services/Drawer/NavBar.dart';
import '../Appointment/AddAppointment1.dart';
import '../Notification/notifications.dart';
import '../WhatsApp/Chat.dart';
import 'AppointmentAnalysis.dart';
import 'PatientAnalysis.dart';
import 'PaymentAnalysis.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  @override
  void pageState() {
      if(_page  == 0){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
      }else if(_page == 1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAppointment1()));
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
        title:Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
              child: Image.asset('assets/images/image 4.png',height: 45,width: 53,),
            ),
            Text('HealThether',style:GoogleFonts.arimo(
              fontWeight:  FontWeight.normal,
              fontSize: 28.7,
              color: Color(0xFF03BF9C),
            ),)
          ],
        ),
          iconTheme:IconThemeData(
            color: Colors.black,
            size: 30.0,
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Color(0xFF740AC7),
        child: Image.asset('assets/images/accountmultipleadd.png',color: Colors.white,),
      ),
      drawer: NavBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 16,right: 16,top: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Saturday',style: GoogleFonts.arimo(
                     fontWeight: FontWeight.normal,
                     fontSize: 14,
                     color: Colors.black
                   ),),
                   SizedBox(height: 4,),
                   Text('1 July, 2023',style: GoogleFonts.arimo(
                       fontWeight: FontWeight.normal,
                       fontSize: 14,
                       color: Colors.black
                   ),),

                 ],
               ),
               Spacer(),
               Text('12:30',style: GoogleFonts.arimo(
                 fontSize: 24,
                 fontWeight: FontWeight.normal,
               ),)
             ],
           ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dr. Ajit Bhalla',style: GoogleFonts.arimo(
                    fontWeight: FontWeight.normal,
                    fontSize: 32,
                  ),)
                ],
              ),
              SizedBox(height: 18,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.12,
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          PieChart(
                              PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                        value: 60,
                                        radius: 10,
                                        color: Color(0xFF740AC7),
                                        showTitle: false
                                    ),
                                    PieChartSectionData(
                                        value: 40,
                                        radius: 10,
                                        color: Color(0xFFE8D0FC),
                                        showTitle: false
                                    ),
                                  ]
                              )
                          ),
                          Align(
                              alignment: Alignment(0,0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.11,
                                child: RichText(
                                    text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Ongoing',style: GoogleFonts.arimo(
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black
                                          ),
                                          ),
                                          TextSpan(
                                            text: '4/10',style: GoogleFonts.arimo(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          )
                                        ]
                                    )
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 32,),
                    Column(
                      children: [
                        Text('Appointment status',style: GoogleFonts.arimo(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.black
                        ),),
                        SizedBox(height: 13,),
                        Row(
                          children: [
                            Text('Remaining',style: GoogleFonts.arimo(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal
                            ),)
                          ],
                        ),
                        SizedBox(height: 13,),
                        Row(
                          children: [
                            Text('Completed',style: GoogleFonts.arimo(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                            ),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 24,),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFFDEFEFE)
                  ),
                  child: Text('Quick Menu',style: GoogleFonts.arimo(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.black
                  ),textAlign: TextAlign.center,),
                ),
              SizedBox(height: 19,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PatientAnalysis()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 20,top: 20),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.5)),
                          color: Color(0xFFF9F4FE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFA342EF),
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]
                      ),
                    child: Column(
                        children: [
                         Row(
                           children: [
                             Container(
                              width: MediaQuery.of(context).size.width*0.23 ,
                               child: Text('Patient Records',style: GoogleFonts.arimo(
                                   fontWeight: FontWeight.normal,
                                   fontSize: 16,
                                   color: Colors.black
                               ),),
                             ),
                             Spacer(),
                             Image.asset('assets/images/Patient.png',height: 25,width: 25,),
                           ],
                         ),
                          SizedBox(height: 6,),
                          Text('Maintain and manage Patient records.',style: GoogleFonts.arimo(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xFF006270)
                          ),),
                        ],
                    ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AppointmentAnalysis()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 20,top: 20),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.5)),
                          color: Color(0xFFF9F4FE),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFA342EF),
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              spreadRadius: 0,
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.23 ,
                                child: Text('Past appointments',style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                              ),
                              Spacer(),
                              Image.asset('assets/images/Pastappointments.png',height: 25,width: 25,),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Text('Record of past appointments.',style: GoogleFonts.arimo(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xFF006270)
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [

                  Container(
                      padding: EdgeInsets.only(left: 12,right: 20,top: 20),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.5)),
                          color: Color(0xFFF9F4FE),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFA342EF),
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              spreadRadius: 0,
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.23 ,
                                child: Text('Manage Staff',style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                              ),
                              Spacer(),
                              Image.asset('assets/images/manage.png',height: 25,width: 25,),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Text('Maintain and manage your Staff records',style: GoogleFonts.arimo(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xFF006270)
                          ),),
                        ],
                      ),
                    ),

                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PaymentAnalysis()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 20,top: 20),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.5)),
                          color: Color(0xFFF9F4FE),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFA342EF),
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              spreadRadius: 0,
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.23 ,
                                child: Text('Payment Records',style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                              ),
                              Spacer(),
                              Image.asset('assets/images/paymentRecords.png',height: 25,width: 25,),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Text('Record of your payments.',style: GoogleFonts.arimo(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xFF006270)
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
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