import 'package:geolocator/geolocator.dart';

class Location {
  Position position;
  List<Placemark> placemark;

  Future<void> getCurrentLocation() async {
    try {
      Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
      position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      GeolocationStatus geolocationStatus =
          await geolocator.checkGeolocationPermissionStatus();
      print(geolocationStatus);
//      print(geolocationStatus.toString() is String);
      if (geolocationStatus.toString() == 'GeolocationStatus.granted') {
        placemark = await geolocator.placemarkFromCoordinates(
            position.latitude, position.longitude);

        Placemark place = placemark[0];

        print(position);
//      print(place);
        print(place.locality); //Mumbai
        print(place.postalCode); //400064
        print(place.position); //Lat: 19.1800253, Long: 72.8342646
        print(place.administrativeArea); //Maharashtra
        print(place.country); //India
        print(place.name); //Chincholi Bunder Road
        print(place.hashCode); //602578370
        print(place.isoCountryCode); //IN
      }
    } catch (e) {
      print('ERROR IN getCurrentLocation-------------- ' + e);
    }
  }
}
