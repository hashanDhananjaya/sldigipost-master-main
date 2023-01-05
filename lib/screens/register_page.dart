import 'package:flutter/material.dart';
import 'package:sldigipost/screens/login_page.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:page_transition/page_transition.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:sldigipost/screens/step_form.dart';
import 'signup_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

bool isChecked = false;

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Colors.indigoAccent,
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/digipostlogo/logo6.png',
                  width: 100,
                  height: 100,
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
                  height: 30,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter your full name',
                      border: OutlineInputBorder(),
                      // filled: true,
                      // fillColor: Color(0xFFF1EEEE),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'NIC',
                      hintText: 'Enter your NIC',
                      border: OutlineInputBorder(),
                      // filled: true,
                      // fillColor: Color(0xFFF1EEEE),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'Enter your address',
                      border: OutlineInputBorder(),
                      // filled: true,
                      // fillColor: Color(0xFFF1EEEE),
                    ),
                  ),
                ),
                // Container(
                //   width: 380,
                //   child: TextField(
                //     obscureText: true,
                //     decoration: InputDecoration(
                //       labelText: 'Password',
                //       hintText: 'Enter your password',
                //       border: OutlineInputBorder(),
                //       filled: true,
                //       fillColor: Color(0xFFF1EEEE),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                
                // Generated code for this CheckboxListTile Widget...
                //         Padding(
                //           padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                //               ),
                //       CheckboxListTile(
                //         controlAffinity: ListTileControlAffinity.leading,
                //         title: const Text('I agree to the Terms and Conditions Agreement'),
                //         checkColor: Colors.white,
                //         value: isChecked,
                // onChanged: (bool? value) {
                // setState(() {
                // isChecked = value!;
                // });
                // },
                //       ),
                SizedBox(width: 10), //SizedBox
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter, duration: Duration (seconds: 1), child: StepForm()));
                    },
                    child: Text('Next'),
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

                        textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? '),
                    //SizedBox(width: 5,),
                    TextButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => LoginPage("")));
                          Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter, duration: Duration (seconds: 1), child: loginWidget()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 17),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     child: Text('Go to home'),
                //     style: ElevatedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20)),
                //         //side: BorderSide(width: 10,color: Colors.blue),
                //         minimumSize: Size(100, 50),
                //         padding: EdgeInsets.all(20),
                //         primary: Colors.amber.shade400, //background
                //         onPrimary: Colors.white,
                //         elevation: 20,
                //         //shadowColor: Colors.red,

                //         textStyle:
                //             TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
