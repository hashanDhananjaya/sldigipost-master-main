import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  int splashtime = 5;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
        //pushReplacement = replacing the route so that
        //splash screen won't show on back button press
        //navigation to Home page.
          builder: (context){
            return MyHomePage(title: "home");
          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            alignment: Alignment.center,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children:<Widget>[
                  Container(
                    child:SizedBox(
                        height:200,width:200,
                        child:Image.asset("images/digipostlogo/logo6.png")
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30),
                    //margin top 30
                    child:Text("Loading...", style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  // Container(
                  //   margin:EdgeInsets.only(top:15),
                  //   child:Text("Welcome", style:TextStyle(
                  //     color:Colors.black45,
                  //     fontSize: 20,
                  //   )),
                  // ),
                ]
            )
        )
    );
  }
}