import 'package:flutter/material.dart';

const String kApiKey = '9499293d662f054a40ec056d21f2bbcc';
const String openWeatherMapUrl =
    'http://api.openweathermap.org/data/2.5/weather';
const String kUnit = 'metric';

const Color kTextButtonColor = Colors.white;

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);
const kTempCityNameStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);
const kTempDescriptionStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);
const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);
const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Colors.white,
);
const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: kTextButtonColor,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
const kTextFieldTextStyle = TextStyle(
  color: Colors.black,
);
