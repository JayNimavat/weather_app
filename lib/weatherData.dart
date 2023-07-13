import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/weatherModel.dart';

class WeatherData {
  Future<Weather> getData(var latitude, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=d6e510e89d5a44aea99124001231007&q=$latitude,$longitude&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
