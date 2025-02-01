import 'package:flutter/material.dart';

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.transparent), // Remove the border or stroke
                borderRadius:
                    BorderRadius.circular(12), // Optional rounded corners
                color: Colors.white, // Background color
              ),
              width: 350,
              child: Column(
                children: <Widget>[
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: const ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      title: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text('Early Twenties')
                          ),
                      trailing: Padding(
                        padding: EdgeInsets.only(
                            right: 20), // Adjust this value to move the arrow
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      children: <Widget>[
                        ListTile(title: Text('YOUNGNGNNGNGNGNG')),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
