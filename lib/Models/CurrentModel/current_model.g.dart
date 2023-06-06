// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentModel _$$_CurrentModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentModel(
      (json['last_updated_epoch'] as num?)?.toDouble(),
      json['last_updated'] as String?,
      (json['temp_c'] as num?)?.toDouble(),
      (json['temp_f'] as num?)?.toDouble(),
      (json['is_day'] as num?)?.toDouble(),
      json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      (json['wind_mph'] as num?)?.toDouble(),
      (json['wind_kph'] as num?)?.toDouble(),
      (json['wind_degree'] as num?)?.toDouble(),
      json['wind_dir'] as String?,
      (json['pressure_mb'] as num?)?.toDouble(),
      (json['pressure_in'] as num?)?.toDouble(),
      (json['precip_mm'] as num?)?.toDouble(),
      (json['precip_in'] as num?)?.toDouble(),
      (json['humidity'] as num?)?.toDouble(),
      (json['cloud'] as num?)?.toDouble(),
      (json['feelslike_c'] as num?)?.toDouble(),
      (json['feelslike_f'] as num?)?.toDouble(),
      (json['vis_km'] as num?)?.toDouble(),
      (json['vis_miles'] as num?)?.toDouble(),
      (json['uv'] as num?)?.toDouble(),
      (json['gust_mph'] as num?)?.toDouble(),
      (json['gust_kph'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CurrentModelToJson(_$_CurrentModel instance) =>
    <String, dynamic>{
      'last_updated_epoch': instance.last_updated_epoch,
      'last_updated': instance.last_updated,
      'temp_c': instance.temp_c,
      'temp_f': instance.temp_f,
      'is_day': instance.is_day,
      'condition': instance.condition,
      'wind_mph': instance.wind_mph,
      'wind_kph': instance.wind_kph,
      'wind_degree': instance.wind_degree,
      'wind_dir': instance.wind_dir,
      'pressure_mb': instance.pressure_mb,
      'pressure_in': instance.pressure_in,
      'precip_mm': instance.precip_mm,
      'precip_in': instance.precip_in,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslike_c,
      'feelslike_f': instance.feelslike_f,
      'vis_km': instance.vis_km,
      'vis_miles': instance.vis_miles,
      'uv': instance.uv,
      'gust_mph': instance.gust_mph,
      'gust_kph': instance.gust_kph,
    };
