import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Appointments/Appointment.dart';
import '../../Chat/Chat.dart';
import '../../Notification/notifications.dart';
import '../home.dart';
import 'AddAppointment4.dart';

class AddAppointment3 extends StatefulWidget {
  AddAppointment3({super.key});

  @override
  State<AddAppointment3> createState() => _AddAppointment3State();
}

class _AddAppointment3State extends State<AddAppointment3> {
  @override
   var selectDate = TextEditingController();
   var selectTime = TextEditingController();
   var attendingDoctor= TextEditingController();
   var appointmentReason = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  int _page = 0;
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }


  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  Widget build(BuildContext context) {
   selectDate.text = selectedDate.toString().split(" ")[0];
  selectTime.text = selectedTime.format(context);
    return Scaffold(
      appBar: AppBar  (
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,size: 24,color: Colors.black,)
        ),
        title: Text('Add Appointment',style:TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
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
            children:[
              Image.asset('assets/images/Frame 2609234.png'),
              SizedBox(height: 20),
              Text('Appointment Details',style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Colors.black
              ),),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                    controller: selectDate,
                    decoration: InputDecoration(
                        suffixIcon:  InkWell(
                          onTap: (){
                            _selectDate(context);
                          },
                            child: Icon(Icons.arrow_drop_down,size: 30,color: Color(0xFF00E0C7),)),
                        hintText: 'Select Date',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        )
                    ),
                    keyboardType: TextInputType.datetime,
                    style:  GoogleFonts.arimo(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:Color(0xFF00E0C7),
                    ),
                    cursorColor: Color(0xFF6A798A)
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                    controller:selectTime ,
                    decoration: InputDecoration(
                        suffixIcon:  InkWell(
                          onTap: (){
                            _selectTime(context);
                          },
                            child: Icon(Icons.arrow_drop_down,size: 30,color: Color(0xFF00E0C7),)),
                        hintText: 'Select Time slot',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        )
                    ),
                    keyboardType: TextInputType.datetime,
                    style:  GoogleFonts.arimo(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:Color(0xFF00E0C7),
                    ),
                    cursorColor: Color(0xFF6A798A)
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                    controller: attendingDoctor,
                    decoration: InputDecoration(
                        suffixIcon:  Icon(Icons.arrow_drop_down,size: 30,color: Color(0xFF00E0C7),),
                        hintText: 'Attending Doctor',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        )
                    ),
                    keyboardType: TextInputType.name,
                    style:  GoogleFonts.arimo(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:Color(0xFF00E0C7),
                    ),
                    cursorColor: Color(0xFF6A798A)
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                    controller: appointmentReason,
                    decoration: InputDecoration(
                        hintText: 'Appointment Reason',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF6A798A)
                            )
                        )
                    ),
                    keyboardType: TextInputType.name,
                    style:  GoogleFonts.arimo(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:Color(0xFF00E0C7),
                    ),
                    cursorColor: Color(0xFF6A798A)
                ),
              ),
              SizedBox(height: 200,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: MediaQuery.of(context).size.width*0.15,
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
                        if(selectTime.text.length  != null && selectDate.text != null && appointmentReason!= null && attendingDoctor != null ){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAppointment4()));
                        }
                      },
                      child: Text('Schedule now',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),)
                  ),
                ),
              ),
            ]
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
