// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AstroModel _$$_AstroModelFromJson(Map<String, dynamic> json) =>
    _$_AstroModel(
      json['sunrise'] as String?,
      json['sunset'] as String?,
      json['moonrise'] as String?,
      json['moonset'] as String?,
      json['moon_phase'] as String?,
      json['moon_illumination'] as String?,
      json['is_moon_up'] as int?,
      json['is_sun_up'] as int?,
    );

Map<String, dynamic> _$$_AstroModelToJson(_$_AstroModel instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moon_phase,
      'moon_illumination': instance.moon_illumination,
      'is_moon_up': instance.is_moon_up,
      'is_sun_up': instance.is_sun_up,
    };
