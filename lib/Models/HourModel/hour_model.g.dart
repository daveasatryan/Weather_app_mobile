// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourModel _$$_HourModelFromJson(Map<String, dynamic> json) => _$_HourModel(
      (json['time_epoch'] as num?)?.toDouble(),
      json['time'] as String?,
      (json['temp_c'] as num?)?.toDouble(),
      (json['is_day'] as num?)?.toDouble(),
      (json['temp_f'] as num?)?.toDouble(),
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
      (json['feelslike_f'] as num?)?.toDouble(),
      (json['feelslike_c'] as num?)?.toDouble(),
      (json['windchill_c'] as num?)?.toDouble(),
      (json['windchill_f'] as num?)?.toDouble(),
      (json['heatindex_c'] as num?)?.toDouble(),
      (json['heatindex_f'] as num?)?.toDouble(),
      (json['dewpoint_c'] as num?)?.toDouble(),
      (json['dewpoint_f'] as num?)?.toDouble(),
      (json['chance_of_rain'] as num?)?.toDouble(),
      (json['will_it_rain'] as num?)?.toDouble(),
      (json['chance_of_snow'] as num?)?.toDouble(),
      (json['will_it_snow'] as num?)?.toDouble(),
      (json['vis_km'] as num?)?.toDouble(),
      (json['vis_miles'] as num?)?.toDouble(),
      (json['gust_mph'] as num?)?.toDouble(),
      (json['gust_kph'] as num?)?.toDouble(),
      (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_HourModelToJson(_$_HourModel instance) =>
    <String, dynamic>{
      'time_epoch': instance.time_epoch,
      'time': instance.time,
      'temp_c': instance.temp_c,
      'is_day': instance.is_day,
      'temp_f': instance.temp_f,
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
      'feelslike_f': instance.feelslike_f,
      'feelslike_c': instance.feelslike_c,
      'windchill_c': instance.windchill_c,
      'windchill_f': instance.windchill_f,
      'heatindex_c': instance.heatindex_c,
      'heatindex_f': instance.heatindex_f,
      'dewpoint_c': instance.dewpoint_c,
      'dewpoint_f': instance.dewpoint_f,
      'chance_of_rain': instance.chance_of_rain,
      'will_it_rain': instance.will_it_rain,
      'chance_of_snow': instance.chance_of_snow,
      'will_it_snow': instance.will_it_snow,
      'vis_km': instance.vis_km,
      'vis_miles': instance.vis_miles,
      'gust_mph': instance.gust_mph,
      'gust_kph': instance.gust_kph,
      'uv': instance.uv,
    };
