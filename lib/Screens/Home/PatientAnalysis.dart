import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class PatientAnalysis extends StatefulWidget {
  const PatientAnalysis({super.key});

  @override
  State<PatientAnalysis> createState() => _PatientAnalysisState();
}

class _PatientAnalysisState extends State<PatientAnalysis> {
  var search = TextEditingController();
  var list =[
    'Yearly',
    'Monthly',
    'Weekly',
    'Daily',
    'Custom'
  ];
  @override
  Widget build(BuildContext context) {
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
          'Patient Analysis',
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16,right: 16,),
                height:41,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                    controller: search,
                    maxLines: 1,
                    inputFormatters: [LengthLimitingTextInputFormatter(40)],
                    decoration: InputDecoration(
                        hintText: 'My clinic',
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 30,color: Color(0xFF009394),),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(width: 1, color: Color(0xFF6A798A))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(width: 1, color: Color(0xFF6A798A)))),
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF00E0C7),
                    ),
                    cursorColor: Color(0xFF6A798A)),
              ),
              SizedBox(height: 16,),
             Container(
               padding: EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                    itemBuilder: (context,index){
                           return Padding(
                             padding: const EdgeInsets.only(left: 8),
                             child: Card(
                               elevation: 2,
                               child: Container(
                                 padding: EdgeInsets.all(10),
                                 height: 40,
                                 alignment: Alignment.center,
                                 decoration: BoxDecoration(
                                   color: Color(0xFFF9F4FE),
                                   borderRadius: BorderRadius.circular(10),
                                   boxShadow: [
                                     BoxShadow(
                                       offset: Offset(1,1),
                                       color: Color(0xFFA342EF),
                                       blurRadius: 4,
                                     )
                                   ]
                                 ),
                                 child: Text(
                                   list[index],
                                   style: GoogleFonts.arimo(
                                     fontWeight: FontWeight.normal,
                                     fontSize: 16,
                                     color:Colors.black,
                                   ),
                                 ),
                               ),
                             ),
                           );
                    },
                  ),
                ),
              SizedBox(height: 16,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.3,
                padding: EdgeInsets.all(20),
                decoration:  BoxDecoration(
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
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Patients Ratio', style:GoogleFonts.poppins(
                       color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.normal
                   )),
                   SizedBox(height: 24,),
                   Row(
                     children: [
                       SizedBox(
                         height: 150,
                         width: 150,
                         child: PieChart(
                             PieChartData(
                               sections: [
                                 PieChartSectionData(
                                     value: 10,
                                     radius: 75,
                                     color: Color(0xFF740AC7),
                                     title: '10%',
                                     titleStyle: GoogleFonts.arimo(
                                         color: Colors.white
                                     )
                                 ),
                                 PieChartSectionData(
                                   value: 40,
                                   radius: 75,
                                   color: Color(0xFFE8D0FC),
                                   title: '90%',
                                 ),
                               ],
                               centerSpaceRadius: 0,
                             )
                         ),
                       ),
                       Spacer(),
                       SizedBox(
                         width: MediaQuery.of(context).size.width*0.33,
                         child: Column(
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: BoxDecoration(
                                     color: Color(0xFFE8D0FC),
                                     borderRadius: BorderRadius.all(Radius.circular(5)),
                                   ),
                                 ),
                                 SizedBox(width: 7,),
                                 SizedBox(
                                   width: MediaQuery.of(context).size.width*0.22,
                                   child: Text('Repeated patients', style:GoogleFonts.poppins(
                                       color: Colors.black,
                                       fontSize: 16,
                                       fontWeight: FontWeight.normal
                                   )),
                                 ),
                               ],
                             ),
                             SizedBox(height: 8,),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: BoxDecoration(
                                     color: Color(0xFF740AC7),
                                     borderRadius: BorderRadius.all(Radius.circular(5)),
                                   ),
                                 ),
                                 SizedBox(width: 7,),
                                 SizedBox(
                                   width: MediaQuery.of(context).size.width*0.22,
                                   child: Text('New patients', style:GoogleFonts.poppins(
                                       color: Colors.black,
                                       fontSize: 16,
                                       fontWeight: FontWeight.normal
                                   )),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ],
               ),
              ),
              SizedBox(height: 24,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.3,
                padding: EdgeInsets.all(20),
                decoration:  BoxDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gender ratio', style:GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                    )),
                    SizedBox(height: 24,),
                    Row(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: PieChart(
                              PieChartData(
                                sections: [
                                  PieChartSectionData(
                                      value: 10,
                                      radius: 75,
                                      color: Color(0xFF740AC7),
                                      title: '10%',
                                      titleStyle: GoogleFonts.arimo(
                                          color: Colors.white
                                      )
                                  ),
                                  PieChartSectionData(
                                    value: 42,
                                    radius: 75,
                                    color: Color(0xFFE8D0FC),
                                    title: '42%',
                                  ),
                                  PieChartSectionData(
                                    value: 58,
                                    radius: 75,
                                    color: Color(0xFFC085EF),
                                    title: '58%',
                                  ),
                                ],
                                centerSpaceRadius: 0,
                              )
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC085EF),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.22,
                                    child: Text('Male', style:GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal
                                    )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF0DCFF),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.22,
                                    child: Text('Female', style:GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal
                                    )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF740AC7),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.22,
                                    child: Text('Other', style:GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.3,
                padding: EdgeInsets.all(20),
                decoration:  BoxDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Age group Analysis', style:GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                    )),
                    SizedBox(height: 24,),
                    Row(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: PieChart(
                              PieChartData(
                                sections: [
                                  PieChartSectionData(
                                      value: 10,
                                      radius: 75,
                                      color: Color(0xFF740AC7),
                                      title: '10%',
                                      titleStyle: GoogleFonts.arimo(
                                          color: Colors.white
                                      )
                                  ),
                                  PieChartSectionData(
                                    value: 40,
                                    radius: 75,
                                    color: Color(0xFFE8D0FC),
                                    title: '90%',
                                  ),
                                ],
                                centerSpaceRadius: 0,
                              )
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.33,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE8D0FC),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.22,
                                    child: Text('Repeated patients', style:GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal
                                    )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF740AC7),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.22,
                                    child: Text('New patients', style:GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
