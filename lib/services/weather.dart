import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '576ae6aeb3f9eb294cf39adf1e0f4e85';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

//api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=xml&units=metric&cnt=7

//https://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=xml%appid=576ae6aeb3f9eb294cf39adf1e0f4e85&&units=metric&cnt=4
//https://api.openweathermap.org/data/2.5/forecast?q=London&appid=576ae6aeb3f9eb294cf39adf1e0f4e85&&units=metric

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

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
}
