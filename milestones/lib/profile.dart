import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: 
      Padding(
      padding:  EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: Center(
          child: Container(
        width: 380,
        height: 700,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), // Optional rounded corners
          color: Color(0xFF1B1C3A), // Background color
        ),
      child: const Column(

        children: [
          
          Padding(
            padding:  EdgeInsets.fromLTRB(0, 40, 200, 0),
            child: Text(
          style:TextStyle(
            color: Color(0xFFF0E9DA),
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
            'Profile')),
            Padding(
               padding:  EdgeInsets.fromLTRB(0,10, 200, 0),
            child: Icon(
                    Icons.person  ,
                    color: Color(0xFFF0E9DA),
                    size: 80,
                  )
            ),
        ],
      ),
      
      ))
      ),
    );
  }
}
