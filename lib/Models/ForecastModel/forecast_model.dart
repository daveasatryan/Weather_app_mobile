
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/ForecastDayModel/forecast_day_model.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
class ForecastModel with _$ForecastModel {
  factory ForecastModel(
   List<ForecastDayModel>? forecastday,


      ) = _ForecastModel;

  ForecastModel._();

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);
}

