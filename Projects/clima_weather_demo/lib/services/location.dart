import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude, longitude;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;

      print("Printing location ----->");
      print("latitude --> $latitude\n longitude --> $longitude");
    } catch (e) {
      print(e);
    }
  }
}
