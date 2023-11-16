import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduleappointment/Models/AppointmentSlot/AppointmentSlots.dart';
import 'package:scheduleappointment/Widgets/AppointmentSlort/AppointmentSlort.dart';

import '../Appointment/AddAppointment1.dart';
import '../Chat/Chat.dart';
import '../Notification/notifications.dart';
import 'home.dart';

class SuperAdminProfile extends StatefulWidget {
  const SuperAdminProfile({super.key});

  @override
  State<SuperAdminProfile> createState() => _SuperAdminProfileState();
}

class _SuperAdminProfileState extends State<SuperAdminProfile> {
  var paymentId = TextEditingController();
  var startTime = TextEditingController();
  var endTime = TextEditingController();
  TimeOfDay selectedTime1 = TimeOfDay.now();
  TimeOfDay selectedTime2 = TimeOfDay.now();
  int _page = 0;
  int countSlot =2;
  String selectedStart = 'am';
  String selectedEnd = 'am';
  var currType =[
    'am',
    'pm',
  ];


  Future<void> _selectTime1(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime1,
    );

    if (picked != null) {
      setState(() {
        selectedTime1 = picked;
      });
    }
    startTime.text = selectedTime1.format(context);
  }

  Future<void> _selectTime2(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime2,
    );

    if (picked != null) {
      setState(() {
        selectedTime2 = picked;
      });
    }
    endTime.text = selectedTime2.format(context);
  }

  List<AppointmentSlotsModel> listAppointmentSlot = [
    AppointmentSlotsModel( number: '1',startTime: '10:15', amorpmStart: 'am', endTime: '12:15', amorpmEnd: 'pm'),
    AppointmentSlotsModel( number: '2',startTime: '12:30', amorpmStart: 'am', endTime: '2:30', amorpmEnd: 'pm'),
  ];

  void pageState() {
    if (_page == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else if (_page == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AddAppointment1()));
    } else if (_page == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WhatsApp()));
    } else if (_page == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => notificationPage()));
    }
  }
  @override
  Widget build(BuildContext context) {
    startTime.text = selectedTime1.format(context);
    endTime.text =selectedTime2.format(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        title: Text(
          'Super admin Profile',
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.23,
              decoration:
                  BoxDecoration(color: Colors.transparent //Color(0xFF711AC5)
                      ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 20, top: 48),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Ellipse 768.png',
                            height: 120,fit: BoxFit.fill,
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
                              height: MediaQuery.of(context).size.height * 0.04,
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
                              height: 12,
                            ),
                            Text(
                              'Dr. Ajit Bhalla',
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
                              width: 42,
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFF03BF9C)),
                              child: Text(
                                'save',
                                style: GoogleFonts.arimo(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            )
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
              height: 16,
            ),
            Column(
              children: [
                Text(
                  'PAYMENTS',
                  style: GoogleFonts.arimo(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 47,
              child: Divider(
                height: 3,
                thickness: 2,
                color: Color(0xFF009394),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'UPI ID',
              style: GoogleFonts.arimo(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF006270)),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  height: 58,
                  width: MediaQuery.of(context).size.width * 0.64,
                  child: TextFormField(
                      controller: paymentId,
                      maxLines: 1,
                      inputFormatters: [LengthLimitingTextInputFormatter(40)],
                      decoration: InputDecoration(
                          hintText: 'ajitbhalla@ybl',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xFF6A798A))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xFF6A798A)))),
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF00E0C7),
                      ),
                      cursorColor: Color(0xFF6A798A)),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 58,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF009394),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                7), // Set the radius to 0 for a rectangular shape
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Copy',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.copy_rounded,
                            size: 18,
                          )
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 32,
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                        color: Color(0xFF009394),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Add another UPI ID ',
                        style: GoogleFonts.arimo(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Color(0xFF009394)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    height: 0,
                    thickness: 2,
                    color: Color(0xFF009394),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Text(
                  'Appointment Slots',
                  style: GoogleFonts.arimo(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 47,
              child: Divider(
                height: 3,
                thickness: 2,
                color: Color(0xFF009394),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Slot 1',
              style: GoogleFonts.arimo(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xFF009394)),
            ),
            SizedBox(
              height: 12,
            ),
                Row(
              children: [
                Card(
                  elevation: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    height: 58,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFD5D5D5),
                              offset: Offset(2, 2),
                              blurRadius: 4)
                        ]),
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: InkWell(
                        onTap: (){
                          _selectTime1(context);
                        },
                      child: TextFormField(
                          controller: startTime,
                          maxLines: 1,
                          enabled: false,
                          inputFormatters: [LengthLimitingTextInputFormatter(8)],
                          decoration: InputDecoration(
                            hintText: 'Start',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.datetime,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF00E0C7),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    height: 58,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFD5D5D5),
                              offset: Offset(2, 2),
                              blurRadius: 4)
                        ]),
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: DropdownButton(
                      // Initial Value
                      value: selectedStart,
                      // Down Arrow Icon
                      icon: Icon(Icons.keyboard_arrow_down),
                      // Array list of items

                      items: currType.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,style: TextStyle(fontSize: 13),),
                        );
                      }).toList(),
                      underline: Container(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedStart = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    height: 58,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFD5D5D5),
                              offset: Offset(2, 2),
                              blurRadius: 4)
                        ]),
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: InkWell(
                      onTap: (){
                        _selectTime2(context);
                      },
                      child: TextFormField(
                          controller: endTime,
                          maxLines: 1,
                          enabled: false,
                          inputFormatters: [LengthLimitingTextInputFormatter(8)],
                          decoration: InputDecoration(
                            hintText: 'End',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.datetime,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF00E0C7),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      height: 58,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFD5D5D5),
                                offset: Offset(2, 2),
                                blurRadius: 4)
                          ]),
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: DropdownButton(
                        // Initial Value
                        value: selectedEnd,
                        // Down Arrow Icon
                        icon: Icon(Icons.keyboard_arrow_down),
                        // Array list of items

                        items: currType.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style: TextStyle(fontSize: 13),),
                          );
                        }).toList(),
                        underline: Container(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedEnd= newValue!;
                          });
                        },
                      ),
                ),
                ),
              ]
            ),
                SizedBox(
                  height: 12,
                ),
               Row(
                 children: [
                   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(startTime != null && endTime != null){
                            AppointmentSlotsModel newAppointmentSlotsModel = AppointmentSlotsModel(number: countSlot.toString(),startTime:selectedTime1.format(context).toString() , amorpmStart: selectedStart.toString(), endTime:selectedTime2.format(context).toString(), amorpmEnd: selectedEnd.toString());
                            listAppointmentSlot.add(newAppointmentSlotsModel);
                            countSlot = countSlot +1;
                          }
                        });
                      },
                      child: Container(
                        height: 32,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                              color: Color(0xFF009394),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Add slot',
                              style: GoogleFonts.arimo(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Color(0xFF009394)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        height: 0,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
              ],
            ),
                   Spacer(),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         height: 32,
                         child: Row(
                           children: [
                            Container(
                              color: Color(0xFFB4B4B4),
                              width: 15,
                              height: 2,
                            ),
                             SizedBox(
                               width: 12,
                             ),
                             Text(
                               'Delete slot',
                               style: GoogleFonts.arimo(
                                   fontWeight: FontWeight.normal,
                                   fontSize: 16,
                                   color: Color(0xFFB4B4B4),),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(
                         width: 100,
                         child: Divider(
                           height: 0,
                           thickness: 2,
                           color: Color(0xFFB4B4B4),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
                SizedBox(height: 8,),
                Divider(
                  height: 3,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 8,),
                   Container(
                  padding: EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listAppointmentSlot.length,
                    itemBuilder: (context,index){
                      return AppointmentSlortWidget(context, listAppointmentSlot[index]);
                    },
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
