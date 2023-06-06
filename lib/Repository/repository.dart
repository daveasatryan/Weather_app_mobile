import 'package:weather_app_mone/Models/WeatherModel/weather_model.dart';
import 'package:weather_app_mone/Repository/dio_options.dart';

class Repository {
  static Future<WeatherModel> getData(
      {required double lat, required double long}) async {
    final res = await dio.get("$lat,$long&aqi=no&days=7");
    return WeatherModel.fromJson(res.data);
  }
}
