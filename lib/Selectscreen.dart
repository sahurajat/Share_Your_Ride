import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_tracker/adressDetail.dart';
import 'Ride_1_screen.dart';


class selectScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.greenAccent,
      //   title: Text('Custom widget'),
      // ),
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
          child: InkWell(
            
            child: Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>rider()));
                     },
                     child: Container(

                       height: 150,
                       width: 150,
                       decoration: BoxDecoration(

                         color: Colors.orange,
                         shape:BoxShape.circle,

                       ),

                       child: Center(
                         child: Text('RIDER',style: TextStyle(fontSize: 24,
                           fontWeight:FontWeight.bold,
                           color: Colors.white

                         ),),
                       ),

                     ),
                   ),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>adreeDetail()));
                    },
                    child: Container(
                      height:150,
                      width: 150,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          color: Colors.orange
                      ),
                      child: Center(
                        child: Text('PASSENGER',style: TextStyle(fontSize: 24,
                            fontWeight:FontWeight.bold,
                            color: Colors.white

                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

}
