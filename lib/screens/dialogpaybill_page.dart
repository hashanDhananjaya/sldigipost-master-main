import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:page_transition/page_transition.dart';

import 'menu_page.dart';
import 'dialogpromotions_page.dart';
import 'dialogbillhistory_page.dart';

class DialogPayBillPage extends StatefulWidget {
  const DialogPayBillPage({Key? key}) : super(key: key);

  @override
  _DialogPayBillPageState createState() => _DialogPayBillPageState();
}

class _DialogPayBillPageState extends State<DialogPayBillPage> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

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
                  // width: double.infinity,
                  // height: 32,
                  // decoration: BoxDecoration(
                  // color: Color(0xFF5870CB),
                  // ),
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
                    child: SingleChildScrollView(
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
                                                    //     context,
                                                    //     '/dialogpromotions');
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
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                2, 2),
                                                            spreadRadius: 4,
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        border: Border.all(
                                                          color: Color(
                                                              0xC6D5C9C9),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                        child: Text(
                                                          'Promotions',
                                                          textAlign: TextAlign
                                                              .center,
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
                                                          color: Color(
                                                              0x33000000),
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
                                                        'Pay Bill',
                                                        textAlign: TextAlign
                                                            .center,
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Navigator.pushNamed(
                                                    //     context,
                                                    //     '/dialogbillhistory');
                                                    Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 1), child: DialogBillHistoryPage()));
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
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                2, 2),
                                                            spreadRadius: 4,
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        border: Border.all(
                                                          color: Color(
                                                              0xC6D5C9C9),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                        child: Text(
                                                          'Bill History',
                                                          textAlign: TextAlign
                                                              .center,
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
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                                    Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 50, 0, 0),
                                    child: Container(
                                    width: 350,
                                    height: 40,
                                    decoration: BoxDecoration(
                                    color: Color(0xFFE9E4F5),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                    color: Color(0xFF8C9EFF),
                                    width: 2,
                                    ),
                                    ),
                                    child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                    Text(
                                    'Total Amount : RS ',
                                    ),
                                    Text(
                                    '5000.00',
                                    ),
                                    ],
                                    ),
                                                        ),
                                    ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.assignment_ind,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                      Text(
                                        'Account Number',
                                      ),
                                    ],
                                  ),
                                ),
                          Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Container(
                                    width: 340,
                                    child: TextFormField(
                                      controller: textController1,
                                      keyboardType: TextInputType.number,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          focusedErrorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          filled: true,
                                          suffixIcon:
                                          InkWell(
                                            onTap: () async {
                                              textController1?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          )

                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                      Text(
                                        'Amount',
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                        child: Container(
                                          width: 340,
                                          child: TextFormField(
                                            controller: textController2,
                                            keyboardType: TextInputType.number,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                errorBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF0000),
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                focusedErrorBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF0000),
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                filled: true,
                                                suffixIcon: InkWell(
                                                  onTap: () {
                                                    textController2?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ),
                                      ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.76),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 80, 0, 0),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '');
                                        },
                                        child: Text('Next'),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(20)),
                                            //side: BorderSide(width: 10,color: Colors.blue),
                                            minimumSize: Size(250, 50),
                                            padding: EdgeInsets.all(20),
                                            primary: Colors.indigoAccent[200],
                                            //background
                                            onPrimary: Colors.white,
                                            elevation: 20,
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                ),
                                      SizedBox(
                                        height: 50,
                                      ),
                              ]),
                        ]),
                      ]),
                    ),
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
