import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: 1.3,
        child: Checkbox(
          checkColor: Colors.white, // Color of the check mark
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Color(0xFF98A6D4); // Color when checked
              }
              return Colors.white; // Color when unchecked (removes outline)
            },
          ),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          focusColor: Colors.transparent, // Removes focus color
          hoverColor: Colors.transparent, // Removes hover color
        ));
  }
}
