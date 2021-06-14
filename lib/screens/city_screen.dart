import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/components/icon_button.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/screens/location_screen.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  WeatherModel weatherModel = WeatherModel();
  final cityName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TopIconButton(
                  icon: Icons.arrow_back_ios,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: cityName,
                  style: kTextFieldTextStyle,
                  decoration: kTextFieldDecoration,
                ),
              ),
              TextButton(
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
                onPressed: () async {
                  var weatherData =
                      await weatherModel.getCityWeather(cityName.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationScreen(
                        locationWeather: weatherData,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
