


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/AstroModel/astro_model.dart';
import 'package:weather_app_mone/Models/DaysModel/day_model.dart';
import 'package:weather_app_mone/Models/HourModel/hour_model.dart';

part 'forecast_day_model.freezed.dart';
part 'forecast_day_model.g.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  factory ForecastDayModel(
   DateTime? date,
   int? dateEpoch,
   DayModel? day,
   AstroModel? astro,
   List<HourModel>? hour,


      ) = _ForecastModel;

  ForecastDayModel._();

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);
}

