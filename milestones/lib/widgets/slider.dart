import 'package:flutter/material.dart';

/// Flutter code sample for [Slider].

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 880;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
  width: 400,
    child: 
        Container(
          width: 400,
    child:
    SliderTheme(
  data: SliderTheme.of(context).copyWith(
    trackHeight: 10.0, // Height of the slider's track
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10), // Size of the thumb (circle)
    overlayShape: RoundSliderOverlayShape(overlayRadius: 10), // Size of the overlay when thumb is pressed
  activeTickMarkColor: Colors.black, //
 
  ),
     child: Slider(
        value: _currentSliderValue,
        max: 2640,
        divisions: 3,
        label: '\$'+ _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },

    )
    )
        )
    );
  }
}