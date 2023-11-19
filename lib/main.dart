import 'package:flutter/material.dart';
import 'package:location_tracker/Ride_1_screen.dart';
import 'package:location_tracker/Selectscreen.dart';
import 'package:location_tracker/adressDetail.dart';
import 'package:location_tracker/rideConfirm.dart';
import 'package:location_tracker/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),

      ),
      home:SplashScreen(),
    );
  }
}
class NextScreen extends StatelessWidget{
  var nameFromHome;

  NextScreen(this.nameFromHome);

  @override
  Widget build(BuildContext context){


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Custom widget'),
      ),

      body:Container(
          color: Colors.blueGrey.shade300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome $nameFromHome",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w600,color: Colors.white),),
                ElevatedButton(onPressed: (){

                }, child: Text('Back'))
              ],
            ),
          )),
    );
  }
}
