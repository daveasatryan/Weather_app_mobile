// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayModel _$$_DayModelFromJson(Map<String, dynamic> json) => _$_DayModel(
      (json['maxtemp_c'] as num?)?.toDouble(),
      (json['maxtemp_f'] as num?)?.toDouble(),
      (json['mintemp_c'] as num?)?.toDouble(),
      (json['mintemp_f'] as num?)?.toDouble(),
      (json['avgtemp_c'] as num?)?.toDouble(),
      (json['avgtemp_f'] as num?)?.toDouble(),
      (json['maxwind_mph'] as num?)?.toDouble(),
      (json['maxwind_kph'] as num?)?.toDouble(),
      (json['totalprecip_mm'] as num?)?.toDouble(),
      (json['totalprecip_in'] as num?)?.toDouble(),
      (json['totalsnow_cm'] as num?)?.toDouble(),
      (json['avgvis_km'] as num?)?.toDouble(),
      (json['avgvis_miles'] as num?)?.toDouble(),
      (json['avghumidity'] as num?)?.toDouble(),
      (json['daily_will_it_rain'] as num?)?.toDouble(),
      (json['daily_chance_of_rain'] as num?)?.toDouble(),
      (json['daily_will_it_snow'] as num?)?.toDouble(),
      (json['daily_chance_of_snow'] as num?)?.toDouble(),
      json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DayModelToJson(_$_DayModel instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxtemp_c,
      'maxtemp_f': instance.maxtemp_f,
      'mintemp_c': instance.mintemp_c,
      'mintemp_f': instance.mintemp_f,
      'avgtemp_c': instance.avgtemp_c,
      'avgtemp_f': instance.avgtemp_f,
      'maxwind_mph': instance.maxwind_mph,
      'maxwind_kph': instance.maxwind_kph,
      'totalprecip_mm': instance.totalprecip_mm,
      'totalprecip_in': instance.totalprecip_in,
      'totalsnow_cm': instance.totalsnow_cm,
      'avgvis_km': instance.avgvis_km,
      'avgvis_miles': instance.avgvis_miles,
      'avghumidity': instance.avghumidity,
      'daily_will_it_rain': instance.daily_will_it_rain,
      'daily_chance_of_rain': instance.daily_chance_of_rain,
      'daily_will_it_snow': instance.daily_will_it_snow,
      'daily_chance_of_snow': instance.daily_chance_of_snow,
      'condition': instance.condition,
      'uv': instance.uv,
    };
