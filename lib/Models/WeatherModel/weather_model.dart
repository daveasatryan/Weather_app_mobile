
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/CurrentModel/current_model.dart';
import 'package:weather_app_mone/Models/ForecastModel/forecast_model.dart';
import 'package:weather_app_mone/Models/LocationModel/location_model.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
     LocationModel? location,
     CurrentModel? current,
     ForecastModel? forecast,


  }) = _WeatherModel;

  WeatherModel._();

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
