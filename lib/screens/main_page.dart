import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:page_transition/page_transition.dart';

import 'menu_page.dart';
import 'telcohome_page.dart';
import 'bankshome_page.dart';
import 'financehome_page.dart';
import 'insurancehome_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   backgroundColor: Color(0xFFE9E4F6),
        body: ColorfulSafeArea(
        color: Colors.indigoAccent,
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Center(
        child: Column(
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
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Color.fromARGB(140, 233, 228, 245),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Color(0xFF101213),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '');
                      },
                    ),
                  ),
                  Text(
                    'Home',
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
                        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 0), child: MenuPage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    ImageSlideshow(
                      indicatorColor: Colors.blue,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'images/homewallpapers/h1.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'images/homewallpapers/h2.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'images/homewallpapers/h3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      Container(
              child: Text(
                'Digitalize Your World With \nDigiPost.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF00126F),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              width: double.infinity,
         //     height:  ,
              decoration: BoxDecoration(
                // color: Color(0xFFE9E4F5),
              ),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      offset: Offset(2, 2),
                                      spreadRadius: 2,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.pushNamed(
                                        //     context, '/telcohome');
                                        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: TelcoHomePage()));
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/homepics/telco.jpg',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      offset: Offset(2, 2),
                                      spreadRadius: 2,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.pushNamed(
                                        //     context, '/bankshome');
                                        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: BanksHomePage()));
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/homepics/bank.jpg',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                              // Navigator.pushNamed(
                              // context, '/telcohome');
                                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: TelcoHomePage()));
                                                        },
                              child: Text(
                                'Telco',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.pushNamed(
                                      //     context, '/bankshome');
                                      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: BanksHomePage()));
                                    },
                              child: Text(
                                'Bank',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(2, 2),
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      // Navigator.pushNamed(
                                      //     context, '/electricityhome');
                                      // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child:()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/homepics/electricity board.jpg',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(2, 2),
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      // Navigator.pushNamed(
                                      //     context, 'TelcoHomePage');
                                      // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: ()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/homepics/water.jpg',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, '/electricityhome');
                                // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: ()));
                              },
                              child: Text(
                                'Electricity',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, 'TelcoHomePage');
                                // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: ()));
                              },
                              child: Text(
                                'Water',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(2, 2),
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      // Navigator.pushNamed(
                                      //     context, '/financehome');
                                      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: FinanceHomePage()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/homepics/finance.jpg',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(2, 2),
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      // Navigator.pushNamed(
                                      //     context, '/insurancehome');
                                      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: InsuranceHomePage()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/homepics/insurance.jpg',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, '/financehome');
                                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: FinanceHomePage()));
                              },
                              child: Text(
                                'Finance',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, '/insurancehome');
                                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, duration: Duration (seconds: 1), child: InsuranceHomePage()));
                              },
                              child: Text(
                                'Insurance',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
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
          ],
        ),
      ),
        ),
    );
  }
}
