


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/AstroModel/astro_model.dart';
import 'package:weather_app_mone/Models/ConditionModel/condition_model.dart';
import 'package:weather_app_mone/Models/DaysModel/day_model.dart';
import 'package:weather_app_mone/Models/WeatherModel/weather_model.dart';

part 'hour_model.freezed.dart';
part 'hour_model.g.dart';

@freezed
class HourModel with _$HourModel {
  factory HourModel(

   double? time_epoch,
   String? time,
   double? temp_c,
   double? is_day,
   double? temp_f,
   ConditionModel? condition,
   double? wind_mph,
   double? wind_kph,
   double? wind_degree,
   String? wind_dir,
   double? pressure_mb,
   double? pressure_in,
   double? precip_mm,
   double? precip_in,
   double? humidity,
   double? cloud,
   double? feelslike_f,
   double? feelslike_c,
   double? windchill_c,
   double? windchill_f,
   double? heatindex_c,
   double? heatindex_f,
   double? dewpoint_c,
   double? dewpoint_f,
   double? chance_of_rain,
   double? will_it_rain,
   double? chance_of_snow,
   double? will_it_snow,
   double? vis_km,
   double? vis_miles,
   double? gust_mph,
   double? gust_kph,
   double? uv,

      ) = _HourModel;

  HourModel._();

  factory HourModel.fromJson(Map<String, dynamic> json) =>
      _$HourModelFromJson(json);
}

