import 'dart:developer';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:sldigipost/screens/Register_Page.dart';

class loginWidget extends StatefulWidget {
  const loginWidget({Key? key}) : super(key: key);

  @override
  State<loginWidget> createState() => _loginWidgetState();
}

class _loginWidgetState extends State<loginWidget> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late bool _passwordVisible;

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    log("Email is: $emailController");
    log("Password is: $passwordController");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ColorfulSafeArea(
        color: Colors.indigoAccent,
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/digipostlogo/logo6.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Text(
                  //   'Admin Pannel',
                  //   textAlign: TextAlign.justify,
                  //   style: TextStyle(
                  //     fontSize: 28, fontStyle: FontStyle.italic,
                  //     color: Colors.black,
                  //     //fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //    Container(
                  //      width: 380,
                  //     color: Colors.white60,
                  // child: TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: 'User Id',
                  //     hintText: 'Enter your User Id',
                  //     // validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null
                  //     border: OutlineInputBorder(),
                  //     // filled: true,
                  //     // fillColor: Color(0xFFF1EEEE),
                  //   ),
                  // ),

                  //   ),

                  Container(
                    width: 380,
                    color: Colors.white60,
                    child: TextFormField(
                      controller: emailController,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (email)=>
                      email != null && !EmailValidator.validate(email) ? 'Enter valid email' :null,

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   width: 380,
                  //   color: Colors.white60,
                  //   child: PasswordField(
                  //     passwordConstraint: r'.*[@$#.*].*',
                  //     inputDecoration: PasswordDecoration(),
                  //     hintText: 'Enter your password',
                  //     border: PasswordBorder(
                  //       border: OutlineInputBorder(),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Color.fromARGB(255, 92, 95, 98),
                  //         ),
                  //         // borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       focusedErrorBorder: OutlineInputBorder(
                  //         // borderRadius: BorderRadius.circular(10),
                  //         borderSide:
                  //         BorderSide(width: 2, color: Colors.red.shade200),
                  //       ),
                  //     ),
                  //     errorMessage:
                  //     'must contain special character either . * @ # \$',
                  //   ),
                  //   // decoration: InputDecoration(
                  //   //   labelText: 'Password',
                  //   //   hintText: 'Enter your password',
                  //   //   border: OutlineInputBorder(),
                  //   //   filled: true,
                  //   //   fillColor: Color(0xFFF1EEEE),
                  // ),
                  Container(
                    width: 380,
                    color: Colors.white60,
                    //     child: PasswordField(
                    //       controller: passwordController,
                    //       passwordConstraint: r'.*[@$#.*].*',
                    //     inputDecoration: PasswordDecoration(),
                    //     border: PasswordBorder(border: OutlineInputBorder()),
                    //
                    //       autovalidateMode: AutovalidateMode.onUserInteraction,
                    //       validator: (email)=>
                    //       email != null && !EmailValidator.validate(email) ? 'Enter your email' :null,
                    //
                    // //      textInputAction: TextInputAction.done,
                    // //      decoration: InputDecoration(labelText: 'Password'),
                    //  //     obscureText: true,
                    //     ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      obscureText: !_passwordVisible,//This will obscure text dynamically
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(),
                        // Here is key idea
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      // validator: (password)=>
                      // password != null ? 'Enter your password' :null,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: signIn,
                      //() {
                      // Navigator.pushNamed(context, '/main');

                      //    },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          //side: BorderSide(width: 10,color: Colors.blue),
                          minimumSize: Size(250, 50),
                          padding: EdgeInsets.all(20),
                          primary: Colors.blue, //background
                          onPrimary: Colors.white,
                          elevation: 20,
                          //shadowColor: Colors.red,

                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      //SizedBox(width: 5,),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(fontSize: 17),
                          ))
                    ],
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
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
      ),
    );

    log("Email is: $emailController");
    log("Password is: $passwordController");
  }
  Future signIn() async{
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = formKey.currentState!.validate();
    if(!isValid) return;

    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    log("(LoginPage)Email is: $emailController");
    log("(LoginPage)Password is: $passwordController");
  }
}
