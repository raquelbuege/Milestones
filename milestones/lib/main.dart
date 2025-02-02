import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'navbar.dart';
import 'profile.dart';
import 'tasks.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    ChangeNotifierProvider<UserViewModel>(
      create: (context) => UserViewModel(), // Provide UserViewModel
      child: MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavBar Demo',
       theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontFamily: 'MadeTommy',// Set custom font family
          ),
          bodyMedium: TextStyle(
              fontFamily: 'MadeTommy',
          ),
          displayLarge: TextStyle(
             fontFamily: 'MadeTommy',
          ),
          displayMedium: TextStyle(
              fontFamily: 'MadeTommy',
          ),
        ),
       ),
      home: Navbar(),
    );
  }
}







