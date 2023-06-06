// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastModel _$$_ForecastModelFromJson(Map<String, dynamic> json) =>
    _$_ForecastModel(
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      json['dateEpoch'] as int?,
      json['day'] == null
          ? null
          : DayModel.fromJson(json['day'] as Map<String, dynamic>),
      json['astro'] == null
          ? null
          : AstroModel.fromJson(json['astro'] as Map<String, dynamic>),
      (json['hour'] as List<dynamic>?)
          ?.map((e) => HourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastModelToJson(_$_ForecastModel instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'dateEpoch': instance.dateEpoch,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };
