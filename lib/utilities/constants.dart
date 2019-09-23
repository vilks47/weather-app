import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Manjari',
  fontSize: 100.0,
  color: Colors.black87,
);

const kMessageTextStyle = TextStyle(
//  fontFamily: 'Spartan MB',
  fontFamily: 'Manjari',
  fontSize: 25.0,
  color: Colors.black87,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white70,
//  fontFamily: 'Spartan MB',
  fontFamily: 'Manjari',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
  color: Colors.black87,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white70,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
);
