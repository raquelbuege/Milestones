import 'package:flutter/material.dart'; 


class Badges extends StatelessWidget { 
@override 
Widget build(BuildContext context) { 
	return Scaffold( 

	body:    Padding(
     padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
 child: Center( 
		child: ListView(
  // This next line does the trick.
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Container(
      width: 10,
         height: 10,
      color: Colors.red,
    ),
    Container(
      width: 10,
         height: 10,
      color: Colors.blue,
    ),
    Container(
      width: 10,
         height: 10,
      color: Colors.green,
    ),
    Container(
      width: 10,
         height: 10,
      color: Colors.yellow,
    ),
    Container(
      width: 10,
      height: 10,
      color: Colors.orange,
    ),
  ],
), 
		), 
  ),
	); 
} 
} 
