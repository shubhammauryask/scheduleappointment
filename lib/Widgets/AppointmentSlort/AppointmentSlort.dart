import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduleappointment/Models/AppointmentSlot/AppointmentSlots.dart';

Widget AppointmentSlortWidget(BuildContext context, AppointmentSlotsModel data){
  return  Row(
    children: [
      Text(
        'Slot'+data.number,
        style: GoogleFonts.arimo(
          fontSize: 18,
          color: Color(0xFF006270),
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(width: 20,),
      Container(
        height: 32,
        child: Row(
          children: [
            Container(
              color: Color(0xFF006270),
              width: 5,
              height: 2,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              data.startTime + data.amorpmStart,
              style: GoogleFonts.arimo(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Color(0xFF006270),
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 20,),
      Text(
        'to',
        style: GoogleFonts.arimo(
          fontSize: 18,
          color: Color(0xFF006270),
          fontWeight: FontWeight.normal,
        ),
      ),
      SizedBox(width: 16,),
      Text(
         data.endTime + data.amorpmEnd,
        style: GoogleFonts.arimo(
          fontSize: 18,
          color: Color(0xFF006270),
          fontWeight: FontWeight.normal,
        ),
      ),
      Spacer(),
      Icon(Icons.delete,size: 20,color: Colors.black,)
    ],
  );
}