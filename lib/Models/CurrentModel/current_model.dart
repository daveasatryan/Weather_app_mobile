import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/ConditionModel/condition_model.dart';

part 'current_model.freezed.dart';
part 'current_model.g.dart';

@freezed
class CurrentModel with _$CurrentModel {
  factory CurrentModel(
    double? last_updated_epoch,
    String? last_updated,
    double? temp_c,
    double? temp_f,
    double? is_day,
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
    double? feelslike_c,
    double? feelslike_f,
    double? vis_km,
    double? vis_miles,
    double? uv,
    double? gust_mph,
    double? gust_kph,
  ) = _CurrentModel;

  CurrentModel._();

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);
}
