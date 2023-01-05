import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:page_transition/page_transition.dart';

import 'login_page.dart';
import 'signup_page.dart';
import 'Register_Page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
    body: ColorfulSafeArea(
                color: Colors.indigoAccent,
              left: true,
              top: true,
              right: true,
              bottom: true,
              child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SL DigiPost',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Digitalize Your World With DigiPost.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15, fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 12, 47, 199),
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/digipostlogo/logo6.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (_) {
            //           return LoginPage("Hello");
            //         },
            //         Text('Login'),
            //         style: ElevatedButton.styleFrom(
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20)),
            //           //side: BorderSide(width: 10,color: Colors.blue),
            //           minimumSize: Size(250, 50),
            //           padding: EdgeInsets.all(20),
            //           primary: Color(0xFF2196F3), //background
            //           onPrimary: Colors.white,
            //           elevation: 20,
            //           //shadowColor: Colors.red,

            //           textStyle:
            //               TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //         ),
            // ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                // Navigator.pushNamed(context, '/login');
                Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter, duration: Duration (seconds: 1), child: loginWidget()));
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                //side: BorderSide(width: 10,color: Colors.blue),
                minimumSize: Size(250, 50),
                padding: EdgeInsets.all(20),
                primary: Color(0xFF2196F3), //background
                onPrimary: Colors.white,
                elevation: 20,
                //shadowColor: Colors.red,

                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                // Navigator.pushNamed(context, '/signup');
                Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter, duration: Duration (seconds: 1), child: RegisterPage()));
              },
              child: Text('Regster'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                //side: BorderSide(width: 10,color: Colors.blue),
                minimumSize: Size(250, 50),
                padding: EdgeInsets.all(20),
                primary: Color.fromARGB(255, 53, 94, 229), //background
                onPrimary: Colors.white,
                elevation: 20,
                //shadowColor: Colors.red,

                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
