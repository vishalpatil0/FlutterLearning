import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';

const apikey = "0c81f96a85d606fd78b7a7e4d105d890";
const url = 'https://samples.openweathermap.org/data/2.5/weather';

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();

    await location.getLocation();

    NetworkHelper networkHelper = NetworkHelper(Uri.parse(
        '$url?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey'));

    var result = await networkHelper.getData();

    return result;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    var URL = '$url?q=$cityName&appid=$apikey';

    NetworkHelper networkHelper = NetworkHelper(Uri.parse(URL));

    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
