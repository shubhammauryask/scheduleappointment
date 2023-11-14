import 'package:flutter/material.dart';

import '../Appointment/AddAppointment1.dart';
import '../Notification/notifications.dart';
import '../WhatsApp/Chat.dart';

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
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(child: Text('Home'))),
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
