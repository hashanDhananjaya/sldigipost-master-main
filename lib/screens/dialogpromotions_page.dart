import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:page_transition/page_transition.dart';

import 'menu_page.dart';
import 'dialogpaybill_page.dart';
import 'dialogbillhistory_page.dart';

class DialogPromotionsPage extends StatefulWidget {
  const DialogPromotionsPage({Key? key}) : super(key: key);

  @override
  _DialogPromotionsPageState createState() =>
      _DialogPromotionsPageState();
}

class _DialogPromotionsPageState extends State<DialogPromotionsPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                color: Colors.indigoAccent.shade100,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25,
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
                      Image.asset(
                        'images/telcohomepics/dialog.png',
                        width: 200,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
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
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color:Colors.black,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  'Promotions',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, '/dialogpaybill');
                              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 1), child: DialogPayBillPage()));
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
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
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xFF9F9898),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Pay Bill',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, '/dialogbillhistory');
                              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 1), child: DialogBillHistoryPage()));
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
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
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xC6D5C9C9),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Bill History',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Image.asset(
                          'images/dialogpromotionspics/D1.jpg',
                          width: 350,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Image.asset(
                          'images/dialogpromotionspics/D2.jpg',
                          width: 350,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                        child: Image.asset(
                          'images/dialogpromotionspics/D3.jpg',
                          width: 350,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
        ),
    );
  }
}
