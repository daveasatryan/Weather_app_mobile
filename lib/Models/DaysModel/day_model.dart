import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/ConditionModel/condition_model.dart';

part 'day_model.freezed.dart';
part 'day_model.g.dart';

@freezed
class DayModel with _$DayModel {
  factory DayModel(
    double? maxtemp_c,
    double? maxtemp_f,
    double? mintemp_c,
    double? mintemp_f,
    double? avgtemp_c,
    double? avgtemp_f,
    double? maxwind_mph,
    double? maxwind_kph,
    double? totalprecip_mm,
    double? totalprecip_in,
    double? totalsnow_cm,
    double? avgvis_km,
    double? avgvis_miles,
    double? avghumidity,
    double? daily_will_it_rain,
    double? daily_chance_of_rain,
    double? daily_will_it_snow,
    double? daily_chance_of_snow,
    ConditionModel? condition,
    double? uv,
  ) = _DayModel;

  DayModel._();

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);
}
