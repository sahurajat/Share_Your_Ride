import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'adressDetail.dart';

class rider extends StatefulWidget{
  @override
  State<rider> createState() => _riderState();
}

class _riderState extends State<rider> {
  var mobno=TextEditingController();
  var adharno=TextEditingController();
  var drivingLi=TextEditingController();
  var bikeNo=TextEditingController();
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
        child: Center(
          child: Container(
            width: 350,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [


                TextField(
                   controller: mobno,
                  decoration: InputDecoration(
                    label: Text('Enter your mobile no'),
                    prefixIcon: Icon(Icons.keyboard),

                  ),
                ),

                TextField(
                  controller: adharno,
                  decoration: InputDecoration(
                      label: Text('Enter your adhar no'),
                      prefixIcon: Icon(Icons.keyboard_alt_outlined)
                  ),
                ),
                TextField(
                  controller:drivingLi,
                  decoration: InputDecoration(
                      label: Text('Enter your Driving license no'),
                      prefixIcon: Icon(Icons.drive_eta)
                  ),
                ),
                TextField(
                  controller: bikeNo,
                  decoration: InputDecoration(
                      label: Text('Enter your Bike no'),
                      prefixIcon: Icon(Icons.directions_bike)
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => adreeDetail()));

                }, child: Text('Submit'))

              ],

            ),
          ),
        ),
      ),
    );

  }
}