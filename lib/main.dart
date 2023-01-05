 //import 'package:device_preview/device_preview.dart';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sldigipost/screens/step_form.dart';

import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/main_page.dart';
import 'screens/signup_page.dart';
import 'screens/register_page.dart';
import 'screens/menu_page.dart';
import 'screens/profile_page.dart';
import 'screens/telcohome_page.dart';
import 'screens/bankshome_page.dart';
import 'screens/insurancehome_page.dart';
import 'screens/financehome_page.dart';
import 'screens/dialogpromotions_page.dart';
import 'screens/dialogpaybill_page.dart';
import 'screens/dialogbillhistory_page.dart';
import 'screens/splash_screen.dart';

// void main() => runApp( MyApp());
 Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // locale: //DevicePreview.locale(context),
     // builder: DevicePreview.appBuilder,
      title: 'Splash Screen',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        unselectedWidgetColor: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (context) => loginWidget(),
        '/signup': (context) => SignUp(),
        '/register': (context) => RegisterPage(),
        '/main': (context) => MainPage(),
        '/menu': (context) => MenuPage(),
        '/profile': (context) => ProfilePage(),
        '/telcohome': (context) => TelcoHomePage(),
        '/bankshome': (context) => BanksHomePage(),
        '/insurancehome': (context) => InsuranceHomePage(),
        '/financehome': (context) => FinanceHomePage(),
        '/dialogpromotions': (context) => DialogPromotionsPage(),
        '/dialogpaybill': (context) => DialogPayBillPage(),
        '/dialogbillhistory': (context) => DialogBillHistoryPage(),
        '/spalshscreen': (context) => SplashScreen(),
    },
    );
  }
}

 class Test extends StatelessWidget {
   const Test({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context)=> Scaffold(
     body: StreamBuilder<User?>(
         stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context, snapshot) {
           if(snapshot.hasData){
             final user = FirebaseAuth.instance.currentUser!;
             log("Main dart email: $user.email!");
             return DialogBillHistoryPage();
           }else{
             log("Main dart : Logging failed!");
             return SplashScreen();
           }

         }
     ),
   );
 }
