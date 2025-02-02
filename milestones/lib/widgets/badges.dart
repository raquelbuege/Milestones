import 'package:flutter/material.dart';

class Badges extends StatefulWidget {
  const Badges({super.key});

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 197, 134, 134), //Color.fromARGB(255, 170, 88, 100),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 300,
            height: 40,
            child: 
            
            Padding(
             padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child:Text(
              "Badges",
              textAlign: TextAlign.center, 
              style: TextStyle(
                
                fontFamily: 'MadeTommy',
                fontSize: 26,
                //fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ),
          SizedBox(
            // Added this to constrain ListView height
            height: 145, // Adjust this value based on your needs
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 253, 239, 210),
                  ),
                  child: Image.asset(
                    "assets/images/emergencyFundBadge_2.png",
                    width: 145,
                    height: 145,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 253, 239, 210),
                    ),
                    child: Image.asset(
                      "assets/images/creditBadge_2.png",
                        width: 125,
                        height: 125,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 253, 239, 210),
                    ),
                    child: Image.asset(
                      "assets/images/retirementSavingBadge.png",
                        width: 150,
                        height: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 253, 239, 210),
                    ),
                    child: Image.asset(
                      "assets/images/investingBadge_2.png",
                        width: 150,
                        height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}