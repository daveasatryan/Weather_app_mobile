
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_mone/Models/ForecastDayModel/forecast_day_model.dart';

part 'astro_model.freezed.dart';
part 'astro_model.g.dart';

@freezed
class AstroModel with _$AstroModel {
  factory AstroModel(

   String? sunrise,
   String? sunset,
   String? moonrise,
   String? moonset,
   String? moon_phase,
   String? moon_illumination,
   int? is_moon_up,
   int? is_sun_up,

      ) = _AstroModel;

  AstroModel._();

  factory AstroModel.fromJson(Map<String, dynamic> json) =>
      _$AstroModelFromJson(json);
}

