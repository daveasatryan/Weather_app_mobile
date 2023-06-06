import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel(
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tz_id,
    double? localtime_epoch,
    String? localtime,
  ) = _LocationModel;

  LocationModel._();

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
