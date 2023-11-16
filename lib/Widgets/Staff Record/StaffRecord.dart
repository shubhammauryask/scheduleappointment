import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Models/Staff Record/Staffrecord.dart';

Widget StaffRecordWidget(BuildContext context, StaffRecordModel data){
  return Card(
    elevation: 1,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF9F4FE),
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(data.Name,style: GoogleFonts.arimo(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black
                  ),),
                  SizedBox(height: 8,),
                  Text(data.PhNo,style: GoogleFonts.arimo(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.black
                  ),),
                ],
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(8)),
                  color: Color(0xFF740AC7),
                ),
                child: Text(
                  data.Admin == true?"Admin": data.SuperAdmin == true?"Super Admin":"Guest",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ],
          ),
         SizedBox(height: 16,),
         Row
           (
           children: [
             Text(data.Profession,style: GoogleFonts.arimo(
                 fontWeight: FontWeight.normal,
                 fontSize: 16,
                 color: Colors.black
             ),),
             Spacer(),
             Image.asset('assets/images/symbolsedit.png',height: 20,width: 20,color: Colors.black,),
             SizedBox(width: 12,),
             Icon(Icons.email_outlined,size: 22,color: Colors.black,),
             SizedBox(width: 12,),
             Image.asset('assets/images/ion_logo-whatsapp.png',height: 21,width: 21,color: Colors.black,),
             SizedBox(width: 17,),
             Icon(Icons.delete,size: 22,
               color: data.SuperAdmin == true?Color(0xFFDFDFDF):Colors.black
               ,)
           ],
         )
        ],
      ),
    ),
  );
}
