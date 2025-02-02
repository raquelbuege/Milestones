import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
 final bool initialChecked; // Initial state for the checkbox
  final ValueChanged<bool> onChanged;
  

  const CheckboxExample({super.key, required this.initialChecked,  required this.onChanged}); // Accept initial checked value


  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
   late bool isChecked;
  
  @override
  void initState() {
    super.initState();
    // Initialize the state with the passed value
    isChecked = widget.initialChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: 1.3,
        child: Checkbox(
          checkColor: Colors.white, // Color of the check mark
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Color.fromARGB(255, 170, 88, 100); // Color when checked
              }
              return Colors.white; // Color when unchecked (removes outline)
            },
          ),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
              widget.onChanged(isChecked);
          },
          focusColor: Colors.transparent, // Removes focus color
          hoverColor: Colors.transparent, // Removes hover color
        ));
  }
}
