// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      json['name'] as String?,
      json['region'] as String?,
      json['country'] as String?,
      (json['lat'] as num?)?.toDouble(),
      (json['lon'] as num?)?.toDouble(),
      json['tz_id'] as String?,
      (json['localtime_epoch'] as num?)?.toDouble(),
      json['localtime'] as String?,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tz_id,
      'localtime_epoch': instance.localtime_epoch,
      'localtime': instance.localtime,
    };
