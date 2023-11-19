import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rideConfirm.dart';
class adreeDetail extends StatelessWidget{
  var stpoint=TextEditingController();
  var endpoint=TextEditingController();
  var sveichle=TextEditingController();

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

                 Text('Enter your location detail',
                   style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange.shade500),),
                SizedBox(
                  height: 22,
                ),
                TextField(
                  controller: stpoint,
                  decoration: InputDecoration(
                    label: Text('Enter your Starting point'),
                    prefixIcon: Icon(Icons.location_on),

                  ),
                ),

                TextField(
                  controller: endpoint,
                  decoration: InputDecoration(
                      label: Text('Enter your Ending point'),
                      prefixIcon: Icon(Icons.location_on)
                  ),
                ),
                TextField(
                  controller:sveichle,
                  decoration: InputDecoration(
                      label: Text('Select your vehicle'),
                      prefixIcon: Icon(Icons.drive_eta)
                  ),
                ),

                SizedBox(
                  height: 8,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => rideConfirm()));
                }, child: Text('Submit'))

              ],

            ),
          ),
        ),
      ),
    );

  }

}