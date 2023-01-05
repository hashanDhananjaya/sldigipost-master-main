import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:page_transition/page_transition.dart';

import 'main_page.dart';
import 'profile_page.dart';
import 'home_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
            Align(
            alignment: AlignmentDirectional(1, 0),
            child: Container(
          width: double.infinity,
          height: 45,
              decoration: BoxDecoration(
                color: Color(0xFF5870CB),
              ),
            child: Row(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 50),
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
                      Navigator.pop(context);
                    },
                  ),
        ),
                ],
              ),
            ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Container(
                width: double.infinity,
                height: 740,
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  maxHeight: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF5870CB),
                ),
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.90),
                child: Container(
                  width: 130,
                  height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(140, 233, 228, 245),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.person,
                          size: 100,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.50),
                      child: Text(
                        'Janaka Chathuranga Wijeweera',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.1, -0.44),
                      child: Container(
                        width: 250,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFF5870CB),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, -1),
                      child: Image.asset(
                        'images/digipostlogo/logo6.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/main');
                          Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 1), child: MainPage()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_outlined,
                              size: 30,
                            ),
                            Text(
                              'Home',
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 160, 0, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration (seconds: 1), child: ProfilePage()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.person_outline,
                                color: Colors.black,
                                size: 30,
                              ),
                              Text(
                                'My Profile',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 240, 0, 0),
                        child: InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/menu');
                          },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.call_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text(
                              'Contact Us',
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(18, 320, 0, 0),
                        child: InkWell(
                          onTap: () {

                          },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.text_snippet_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text(
                              'Terms Of Use',
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 400, 0, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.logout,
                                color: Color(0xFFFFFFFF),
                                size: 30,
                              ),
                              onPressed: () => FirebaseAuth.instance.signOut(),
                            ),
                            Text(
                              'Sign Out',
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
        ],
      ),
      ),
    ),
        ),
    );
  }
}
