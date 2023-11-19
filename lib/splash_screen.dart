import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_tracker/Selectscreen.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //to take the time
    Timer(Duration(seconds:  5),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder:(context)=> selectScreen(), ));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Share your Ride',
            style:TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white) ,),
        ),
      ),
    );
  }
}

