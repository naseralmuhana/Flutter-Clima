import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position _position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = _position.latitude;
      longitude = _position.longitude;
    } catch (e) {
      print(e);
    }
  }

  // void getLatitude() async {
  //   Position _position = await getCurrentLocation();
  //   _latitude = _position.latitude;
  //   print(_latitude);
  // }
  //
  // void getLongitude() async {
  //   Position _position = await getCurrentLocation();
  //   _longitude = _position.longitude;
  //   print(_longitude);
  // }
}
