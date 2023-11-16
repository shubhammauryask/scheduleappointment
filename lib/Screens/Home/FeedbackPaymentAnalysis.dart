import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduleappointment/Screens/Home/PaymentAnalysis.dart';

class FeedbackPaymentAnaylsis extends StatefulWidget {
  const FeedbackPaymentAnaylsis({super.key});

  @override
  State<FeedbackPaymentAnaylsis> createState() =>
      _FeedbackPaymentAnaylsisState();
}

class _FeedbackPaymentAnaylsisState extends State<FeedbackPaymentAnaylsis> {
  var feedback = TextEditingController();
  var improve = TextEditingController();
  var rateText = 'Rate Us';
  var rate = 0;
  int _selectedValue = 1;
  void check(){
    if(rate ==1){
      rateText ='Very Dissatisfied';
    }else if(rate == 2){
    rateText ='Dissatisfied';
    }else if(rate == 3){
      rateText ='Neutral ';
    }else if(rate == 4){
        rateText = 'Satisfied';
    }else if(rate == 5){
      rateText = 'Very Satisfied';
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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PaymentAnalysis()));
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        title: Text(
          'Payments Analysis',
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
        padding: EdgeInsets.only(left: 27, right: 27),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We'd Love to Hear From You!",
                style: GoogleFonts.arimo(
                    fontSize: 16,
                    color: Color(0xFF009394),
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "How satisfied are you with our app?",
                style: GoogleFonts.arimo(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                elevation: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFA342EF),
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      )
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),

                          Text(
                              rateText,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color:Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                rate=1;
                                check();
                              });
                            },
                            child: Icon(
                              Icons.star_outlined,
                              size: 45,
                              color:  rate >=1?Color(0xFF740AC7):Color(0xFFD9D9D9),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                rate=2;
                                check();
                              });
                            },
                            child: Icon(
                              Icons.star_outlined,
                              size: 45,
                              color:  rate >=2?Color(0xFF740AC7):Color(0xFFD9D9D9),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                rate=3;
                                check();
                              });
                            },
                            child: Icon(
                              Icons.star_outlined,
                              size: 45,
                              color:  rate >=3?Color(0xFF740AC7):Color(0xFFD9D9D9),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                rate=4;
                                check();
                              });
                            },
                            child: Icon(
                              Icons.star_outlined,
                              size: 45,
                              color:  rate >=4?Color(0xFF740AC7):Color(0xFFD9D9D9),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                rate=5;
                                check();
                              });
                            },
                            child: Icon(
                              Icons.star_outlined,
                              size: 45,
                              color:  rate >=5?Color(0xFF740AC7):Color(0xFFD9D9D9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 13,
              ),
              Text(
                "What do you like most about the app?",
                style: GoogleFonts.arimo(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                elevation: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFA342EF),
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      )
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  child: TextFormField(
                      controller: feedback,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'I liked',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF00E0C7),
                      ),
                      cursorColor: Color(0xFF6A798A)),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "What areas do you think we can improve?",
                style: GoogleFonts.arimo(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                elevation: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFA342EF),
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      )
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  child: TextFormField(
                      controller: improve,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Type your answer here.',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF00E0C7),
                      ),
                      cursorColor: Color(0xFF6A798A)),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Would you recommend our app to others?",
                style: GoogleFonts.arimo(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as int;
                          });
                        },
                      ),
                      Text('Yes, definitely! '),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as int;
                          });
                        },
                      ),
                      Text('Maybe.'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as int;
                          });
                        },
                      ),
                      Text('Not at the moment.'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Thank you for your time!',
                  style: GoogleFonts.arimo(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF009394)),
                ),
                TextSpan(
                  text: '\nYour feedback will help us enhance our services and make your experience even better. We truly appreciate your support and look forward to serving you in the future.',
                  style: GoogleFonts.arimo(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF838383)),
                ), TextSpan(
                      text: "\nIf you have any immediate concerns or questions, please don't hesitate to contact our support team here.",
                      style: GoogleFonts.arimo(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF4A00E7)),
                    )
              ])),
              SizedBox(height: 13,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF00E0C7), // Color of the shadow
                        offset: Offset(0, 2), // Offset of the shadow (horizontal, vertical)
                        blurRadius: 4, // Blur radius of the shadow
                        spreadRadius: 0, // Spread radius of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF009394)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                7), // Set the radius to 0 for a rectangular shape
                          ),
                        ),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 13,),
            ],
          ),
        ),
      ),
    );
  }
}
