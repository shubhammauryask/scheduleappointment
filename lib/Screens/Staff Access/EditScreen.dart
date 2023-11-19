import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Appointments/Appointment.dart';
import '../Chat/Chat.dart';
import '../Home/home.dart';
import '../Notification/notifications.dart';


class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  int _page = 0;
  DateTime selectedDate = DateTime.now();
  var birthDateController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var upiIdController = TextEditingController();
  var acController = TextEditingController();
  var ifscController = TextEditingController();
  var accountController = TextEditingController();
  var age = TextEditingController();

  String selected = 'Male';
  String selectedBank = 'Indian Bank';
  var currTypeBank = [
    'Bob',
    'Indian Bank',
    'SBI',
  ];
  var currType = ['Male', 'Female', 'Other'];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          DateTime.now(), // Initial date displayed when the picker opens
      firstDate: DateTime(2000), // Minimum allowable date
      lastDate: DateTime(2101), // Maximum allowable date
    );

    if (picked != null && picked != selectedDate) {
      // Do something with the selected date, e.g., update it in your state
      setState(() {
        selectedDate = picked;
      });
    }
  }
  void pageState() {
    if (_page == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else if (_page == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Appointment()));
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
    birthDateController.text = selectedDate.toString().split(" ")[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        title: Text(
          'Manage Staff',
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                      color: Colors.transparent //Color(0xFF711AC5)
                      ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(left: 10, right: 20, top:24,bottom: 24 ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/Ellipse 759.png',
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Color(0xFF740AC7),
                                  ),
                                  child: Text(
                                    'Admin',
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
                                  'Dr. Kim Jones',
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
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xFF03BF9C)),
                                  child: Text(
                                    'Edit Profile',
                                    style: GoogleFonts.arimo(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
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
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appointment Slots',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Birthday',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextFormField(
                          controller: birthDateController,
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(4.0),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectDate(context);
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 20,
                                    color: Color(0xFF00E0C7),
                                  )),
                              hintText: 'Select Birthdate',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A)))),
                          keyboardType: TextInputType.datetime,
                          style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6A798A),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Age',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextFormField(
                          controller: age,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(4.0),
                              hintText: '30',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A)))),
                          keyboardType: TextInputType.datetime,
                          style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6A798A),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Gender',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.04,
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(width: 1, color: Color(0xFF6A798A))),
                      child: DropdownButton(
                        value: selected,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF00E0C7),
                          ),
                        ),
                        items: currType.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child:  Row(
                              children: [

                                Text(items,style: GoogleFonts.arimo(
                                  fontSize: 14,
                                  color: Color(0xFF6F6F6F)
                                ),),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 10.0),
                                //   child: Icon(Icons.arrow_drop_down),
                                // ), // Optional: Add space between icon and text
                              ],
                            ),
                          );
                        }).toList(),
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selected = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact DETAILS',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Mobile',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: TextFormField(
                            controller: mobileController,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(4.0),
                                hintText: '+91 986 563214',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A)))),
                            keyboardType: TextInputType.datetime,
                            style: GoogleFonts.arimo(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6A798A),
                            ),
                            cursorColor: Color(0xFF6A798A)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.24,),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextFormField(
                          controller: mobileController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(4.0),
                              suffixIcon: Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/ion_logo-whatsapp.png', // Replace with your image path
                                ),
                              ),
                              hintText: '+91 986 563214',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A)))),
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6A798A),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Email',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextFormField(
                          controller: emailController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(4.0),
                              hintText: 'rameshpatel@gmail.com',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A)))),
                          keyboardType: TextInputType.emailAddress,
                          style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6A798A),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Address',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: TextFormField(
                            controller: age,
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(4.0),
                                hintText:
                                    'Plot No. 4-75/1, Madhavi Nagar,Opposite BHEL R(&)D Gate,BalaNagar Hyderabad, Telangana, 500037.',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A)))),
                            keyboardType: TextInputType.streetAddress,
                            style: GoogleFonts.arimo(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6A798A),
                            ),
                            cursorColor: Color(0xFF6A798A)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank DETAILS',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'UPI ID',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: TextFormField(
                            controller: upiIdController,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(4.0),
                                hintText: 'ram214@ybl',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A)))),
                            keyboardType: TextInputType.name,
                            style: GoogleFonts.arimo(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6A798A),
                            ),
                            cursorColor: Color(0xFF6A798A)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Bank',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.04,
                      padding: EdgeInsets.only(
                          left: 12,
                        right: 12,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(width: 1, color: Color(0xFF6A798A))),
                      child: DropdownButton(
                        value: selectedBank,
                        icon:Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF00E0C7),
                          ),
                        ),
                        items: currTypeBank.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 13),
                            ),
                          );
                        }).toList(),
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedBank = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'A/c no.',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextFormField(
                          controller: acController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(4.0),
                              hintText: '5213 5123 6554 5894',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A)))),
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6A798A),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'IFSC code',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextFormField(
                          controller: ifscController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(4.0),
                              hintText: 'IDBI000H013',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF6A798A)))),
                          keyboardType: TextInputType.name,
                          style: GoogleFonts.arimo(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6A798A),
                          ),
                          cursorColor: Color(0xFF6A798A)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: Text(
                        'Account Holder',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: TextFormField(
                            controller: accountController,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(4.0),
                                hintText: 'Ram Menon',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFF6A798A)))),
                            keyboardType: TextInputType.name,
                            style: GoogleFonts.arimo(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF00E0C7),
                            ),
                            cursorColor: Color(0xFF6A798A)),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.black),
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
