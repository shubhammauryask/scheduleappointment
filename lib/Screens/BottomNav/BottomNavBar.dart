// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:scheduleappointment/Screens/Appointment/AddAppointment1.dart';
// import 'package:scheduleappointment/Screens/Home/home.dart';
// import 'package:scheduleappointment/Screens/Notification/notifications.dart';
// import 'package:scheduleappointment/Screens/WhatsApp/Chat.dart';
//
//
// class BottomNav extends StatefulWidget {
//   final int page;
//   BottomNav({required this.page});
//   @override
//   _BottomNavState createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//   GlobalKey<State> _bottomNavigationKey = GlobalKey();
//
//   var pages = [
//     Home(),
//     AddAppointment1(),
//     WhatsApp(),
//     notificationPage(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           bottomNavigationBar:BottomNavigationBar(
//           backgroundColor:Color(0xff00E0C7) ,
//           key: _bottomNavigationKey,
//           type: BottomNavigationBarType.fixed,
//           currentIndex:widget.page,
//           showSelectedLabels: true,
//           items: [
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/icon_home.png',color: widget.page == 0?Colors.white:Colors.black),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/uis_schedule.png',color: widget.page == 1?Colors.white:Colors.black),
//               label: 'Learn',
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/ion_logo-whatsapp.png',color: widget.page== 2?Colors.white:Colors.black),
//               label: 'Hub',
//
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/icon_notifications.png',color: widget.page == 3?Colors.white:Colors.black),
//               label: 'Chat',
//             ),
//           ],
//         ),
//     );
//   }
// }