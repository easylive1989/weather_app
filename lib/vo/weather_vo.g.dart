// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherVo _$$_WeatherVoFromJson(Map<String, dynamic> json) => _$_WeatherVo(
      countryIcon: json['countryIcon'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      weatherIcon: json['weatherIcon'] as String,
    );

Map<String, dynamic> _$$_WeatherVoToJson(_$_WeatherVo instance) =>
    <String, dynamic>{
      'countryIcon': instance.countryIcon,
      'country': instance.country,
      'city': instance.city,
      'temperature': instance.temperature,
      'windSpeed': instance.windSpeed,
      'weatherIcon': instance.weatherIcon,
    };
