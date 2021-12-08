import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
// import 'package:country_code_picker/country_code_picker.dart';
import 'dart:async';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:xtremeskill/skills.dart';
// import 'package:country_list_pick/country_list_pick.dart';
// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:awesome_dropdown/awesome_dropdown.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  DateTime dateOfBirth = DateTime.now();
  Color bulbColor = Colors.black;
//   String selectedday = 'day';
//   String selectedmonth = 'month';
//   String selectedyear = 'year';

// List<int> day = [
// 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
// 21,22,23,24,25,26,27,28,29,30,31,
// ];

// List

  String selectedday = 'Day';
  String selectedmonth = 'Month';
  String selectedyear = 'Year';

  List listDay = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
  ];

  List listMonth = ['Jan', 'Feb', 'March', 'April', 'May', 'June', 'July', ''];

  String data = 'Male';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String getText() {
      if (dateOfBirth == null) {
        return 'Date of Birth';
      } else {
        return '${dateOfBirth.month}/${dateOfBirth.day}/${dateOfBirth.year}';
      }
    }

    String selectcity = 'Select City';
    List<String> city = [
      "Karachi",
      "Lahore",
      "Faisalabad",
      "Rawalpindi",
      "Multan",
      "Peshawar",
      "Islamabad",
      "Quetta",
      "Mardan",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 90, top: 30, right: 50),
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 260,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue[800],
                            ),
                            labelText: "First Name",
                            labelStyle: TextStyle(color: Colors.blue[800]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        // validator: validateName,
                        onChanged: (val) {
                          //name = val;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_add,
                              color: Colors.blue[800],
                            ),
                            labelText: "Last Name",
                            labelStyle: TextStyle(color: Colors.blue[800]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        // validator: validateName,
                        onChanged: (val) {
                          //name = val;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Gender :',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Times New Roman",
                                  color: Colors.blue[800]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 'Male',
                                    groupValue: data,
                                    onChanged: (value) {
                                      setState(() {
                                        data = value.toString();
                                      });
                                    }),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Times New Roman",
                                      color: Colors.blue[800]),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 'Female',
                                    groupValue: data,
                                    onChanged: (value) {
                                      setState(() {
                                        data = value.toString();
                                      });
                                    }),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Times New Roman",
                                      color: Colors.blue[800]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Date of Birth :",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Times New Roman",
                                  color: Colors.blue[800]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FlatButton(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.date_range,
                                      color: Colors.blue[800],
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      getText(),
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Times New Roman"),
                                    ),
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.all(15),
                                color: Colors.white,
                                textColor: Colors.black,
                                onPressed: () async {
                                  pickDate(context);
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AwesomeDropDown(
                        dropDownList: city,
                        selectedItem: selectcity,
                        onDropDownItemClick: (selectedItem) {
                          setState(() {
                            selectcity = selectedItem;
                          });
                        },
                        numOfListItemToShow: 3,
                        padding: 5,
                        dropDownIcon: Icon(
                          Icons.arrow_drop_down_circle,
                          color: Colors.blue[800],
                        ),
                        dropDownBGColor: Colors.white,
                        dropDownOverlayBGColor: Colors.white,
                        dropDownListTextStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        selectedItemTextStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[800],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        minLines: 2,
                        maxLines: 5,
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.blue[800],
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.blue[800],
                            ),
                            labelText: "Address ",
                            labelStyle: TextStyle(color: Colors.blue[800]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        // validator: (value) {
                        //   String patttern = r'(^[a-zA-Z ]*$)';
                        //   RegExp regExp = new RegExp(patttern);
                        //   if (value!.length == 0) {
                        //     return "Address is Required";
                        //   } else if (!regExp.hasMatch(value)) {
                        //     return "Address must be a-z and A-Z";
                        //   } else if (value.length < 3) {
                        //     return "Address must be more than 2 character";
                        //   }
                        //   return null;
                        // },
                        // onSaved: (val) {
                        //   _address = val!;
                        // },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.blue[800],
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blue[800],
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.blue[800]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        // validator: validateName,
                        onChanged: (val) {
                          //name = val;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.blue[800],
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue[800],
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.blue[800]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        // validator: validateName,
                        onChanged: (val) {
                          //name = val;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.lightBlue,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue[800],
                            ),
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(color: Colors.blue[800]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        // validator: validateName,
                        onChanged: (val) {
                          //name = val;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 15, right: 15),
                                child: FlatButton(
                                    child: Text(
                                      'Sign-Up',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Times New Roman"),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    color: Colors.blue.withOpacity(.5),
                                    textColor: Colors.black,
                                    onPressed: () async {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => skills(),
                                      ));
                                    }))
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;
    setState(() {
      dateOfBirth = newDate;
    });
  }
}
