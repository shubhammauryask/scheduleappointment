import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduleappointment/Screens/Home/home.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFDEFEFE),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 188),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/images/image 4.png',height: 45,width: 53,),
                    ),
                  Text('HealThether',style:GoogleFonts.arimo(
                    fontWeight:  FontWeight.normal,
                    fontSize: 28.7,
                    color: Color(0xFF03BF9C),
                  ),)
                  ],
                ),
              ),
              SizedBox(height: 240,),
              Container(
                width: MediaQuery.of(context).size.width*0.74,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Connecting Healers',style: GoogleFonts.arimo(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                    SizedBox(height: 8,),
                    Text('Access top-tier healthcare with our telemedicine app. Connect with renowned specialist doctors, conveniently book lab tests at nearby hospitals, and effortlessly purchase a wide range of diagnostic tests, all from the palm of your hand.',style:GoogleFonts.arimo(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 74,),
              Container(
                width: MediaQuery.of(context).size.width*0.7,
                height: MediaQuery.of(context).size.height*0.08,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF03BF9C)),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              7), // Set the radius to 0 for a rectangular shape
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
