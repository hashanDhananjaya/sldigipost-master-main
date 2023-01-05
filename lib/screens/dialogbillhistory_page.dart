import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:page_transition/page_transition.dart';

import 'menu_page.dart';
import 'dialogpromotions_page.dart';
import 'dialogpaybill_page.dart';

class DialogBillHistoryPage extends StatefulWidget {
  const DialogBillHistoryPage({Key? key}) : super(key: key);

  @override
  _DialogBillHistoryPageState createState() =>
      _DialogBillHistoryPageState();
}

class _DialogBillHistoryPageState
    extends State<DialogBillHistoryPage> {
  String? dropDownValue1;
  String? dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownvalue1 = 'Select Year';
  String dropdownvalue2 = 'Select Month';

  // List of items in our dropdown menu
  var items1 = [
    'Select Year',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ];

  var items2 = [
    'Select Month',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'Octomber',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: ColorfulSafeArea(
        color: Colors.indigoAccent,
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Center(
          key: scaffoldKey,
          // backgroundColor: Color(0xFFE9E4F5),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Container(
                  //   width: double.infinity,
                  //   height: 32,
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF5870CB),
                  //   ),
                  // ),
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xFF8C9EFF),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'Dialog',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(140, 233, 228, 245),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.grid_view,
                              color: Color(0xD5101213),
                              size: 25,
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, '/menu');
                              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 1), child: MenuPage()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 700,
                      decoration: BoxDecoration(
                        // color: Color(0xFFE9E4F5),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset(
                                            'images/telcohomepics/dialog.png',
                                            width: 200,
                                            height: 100,
                                            fit: BoxFit.contain,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  // Navigator.pushNamed(
                                                  //     context, '/dialogpromotions');
                                                  Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, duration: Duration (seconds: 1), child: DialogPromotionsPage()));
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 10,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20),
                                                  ),
                                                  child: Container(
                                                    width: 110,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4,
                                                          color: Color(0x33000000),
                                                          offset: Offset(2, 2),
                                                          spreadRadius: 4,
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(20),
                                                      border: Border.all(
                                                        color: Color(0xC6D5C9C9),
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                      AlignmentDirectional(0, 0),
                                                      child: Text(
                                                        'Promotions',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  // Navigator.pushNamed(
                                                  //     context, '/dialogpaybill');
                                                  Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, duration: Duration (seconds: 1), child: DialogPayBillPage()));
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 10,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                  ),
                                                  child: Container(
                                                    width: 110,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4,
                                                          color: Color(0x33000000),
                                                          offset: Offset(2, 2),
                                                          spreadRadius: 4,
                                                        )
                                                      ],
                                                      borderRadius: BorderRadius
                                                          .circular(20),
                                                    ),
                                                    child: Align(
                                                      alignment: AlignmentDirectional(
                                                          0, 0),
                                                      child: Text(
                                                        'Pay Bill',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight: FontWeight
                                                              .w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 10,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(20),
                                                ),
                                                child: Container(
                                                  width: 110,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFC0CFFF),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color: Color(0x33000000),
                                                        offset: Offset(2, 2),
                                                        spreadRadius: 4,
                                                      )
                                                    ],
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                    border: Border.all(
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: AlignmentDirectional(
                                                        0, 0),
                                                    child: Text(
                                                      'Bill History',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                              Align(
                                alignment: AlignmentDirectional(0, 0.76),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                  child: Container(
                                    // width: 330,
                                    child: DropdownButton(
                                      value: dropdownvalue1,
                                      disabledHint: Text ("Select Year"),
                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      items: items1.map((String items1) {
                                        return DropdownMenuItem(
                                          value: items1,
                                          child: Text(items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue1 = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              DropdownButton(
                                value: dropdownvalue2,
                                disabledHint: Text ("Select Month"),
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items2.map((String items2) {
                                  return DropdownMenuItem(
                                    value: items2,
                                    child: Text(items2),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue2 = newValue!;
                                  });
                                },
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.76),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '');
                                      },
                                      child: Text('Search'),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          //side: BorderSide(width: 10,color: Colors.blue),
                                          minimumSize: Size(250, 50),
                                          padding: EdgeInsets.all(20),
                                          primary: Colors.indigoAccent, //background
                                          onPrimary: Colors.white,
                                          elevation: 20,
                                          textStyle: TextStyle(
                                              fontSize: 15, fontWeight: FontWeight.bold))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                                child: Container(
                                  width: 350,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5870CB),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Outstanding :',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                              child: Text(
                                                'RS.',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Bill Value :',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                              child: Text(
                                                'RS.',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  130, 0, 0, 0),
                                              child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pushNamed(context, '');
                                                  },
                                                  child: Text('Check Bill'),
                                                  style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20)),
                                                      //side: BorderSide(width: 10,color: Colors.blue),
                                                      minimumSize: Size(90, 30),
                                                      padding: EdgeInsets.all(5),
                                                      primary: Colors.indigo[900], //background
                                                      onPrimary: Colors.white,
                                                      elevation: 20,
                                                      textStyle: TextStyle(
                                                          fontSize: 12, fontWeight: FontWeight.bold))),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Payment :',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                              child: Text(
                                                'RS.',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Container(
                                  width: 350,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5870CB),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Outstanding :',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                                child: Text(
                                                  'RS.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Bill Value :',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                                child: Text(
                                                  'RS.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    130, 0, 0, 0),
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '');
                                                    },
                                                    child: Text('Check Bill'),
                                                    style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20)),
                                                        //side: BorderSide(width: 10,color: Colors.blue),
                                                        minimumSize: Size(90, 30),
                                                        padding: EdgeInsets.all(5),
                                                        primary: Colors.indigo[900], //background
                                                        onPrimary: Colors.white,
                                                        elevation: 20,
                                                        textStyle: TextStyle(
                                                            fontSize: 12, fontWeight: FontWeight.bold))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Payment :',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                                child: Text(
                                                  'RS.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Container(
                                  width: 350,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5870CB),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Outstanding :',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                                child: Text(
                                                  'RS.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Bill Value :',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                                child: Text(
                                                  'RS.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    130, 0, 0, 0),
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '');
                                                    },
                                                    child: Text('Check Bill'),
                                                    style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20)),
                                                        //side: BorderSide(width: 10,color: Colors.blue),
                                                        minimumSize: Size(90, 30),
                                                        padding: EdgeInsets.all(5),
                                                        primary: Colors.indigo[900], //background
                                                        onPrimary: Colors.white,
                                                        elevation: 20,
                                                        textStyle: TextStyle(
                                                            fontSize: 12, fontWeight: FontWeight.bold))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Payment :',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                                child: Text(
                                                  'RS.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ] ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}