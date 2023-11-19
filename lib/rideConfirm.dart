import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectScreen.dart';
class rideConfirm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text('LocationTracker'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.orange.shade100,
                  Colors.purple.shade100,

                ]
            )
        ),
        child: Column(
          children: [
            Text('RIDE CONFIRMED',
              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),),

             SizedBox(
               height: 60,
             ),
             Image.asset('assets/images/loc.png',),
            Text('Life is a journey Enjoy the ride',style: TextStyle(fontSize: 20,color: Colors.blue),),

            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => selectScreen()));

            }, child: Text('Cancel',style: TextStyle(fontSize: 20,color: Colors.red.shade500),))
          ],
        ),
      ),

    );
  }

}