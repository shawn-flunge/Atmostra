// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDto _$$_WeatherDtoFromJson(Map<String, dynamic> json) =>
    _$_WeatherDto(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String,
      time: json['dt'] as int,
      timezone: json['timezone'] as int? ?? 0,
      country: _countryFromJson(json, 'country') as String,
      sunrise: _sunriseFromJson(json, 'sunrise') as int,
      sunset: _sunsetFromJson(json, 'sunset') as int,
      lat: (_latFromJson(json, 'lat') as num).toDouble(),
      long: (_longFromJson(json, 'long') as num).toDouble(),
      main: _mainFromJson(json, 'main') as String,
      description: _descriptionFromJson(json, 'description') as String,
      icon: _iconFromJson(json, 'icon') as String,
      weatherId: _weatherIdFromJson(json, 'weatherId') as int,
      temp: (_tempFromJson(json, 'temp') as num).toDouble(),
      feelsLike: (_feelsLikeFromJson(json, 'feelsLike') as num).toDouble(),
      tempMin: (_tempMinFromJson(json, 'tempMin') as num).toDouble(),
      tempMax: (_tempMaxFromJson(json, 'tempMax') as num).toDouble(),
      pressure: _pressureFromJson(json, 'pressure') as int,
      humidity: _humidityFromJson(json, 'humidity') as int,
      clouds: _cloudsFromJson(json['clouds'] as Map<String, dynamic>),
      visibility: json['visibility'] as int? ?? 0,
      windSpeed: (_windSpeedFromJson(json, 'windSpeed') as num).toDouble(),
      windDegree: _windDegreeFromJson(json, 'windDegree') as int,
      windGust: (_windGustFromJson(json, 'windGust') as num).toDouble(),
    );

Map<String, dynamic> _$$_WeatherDtoToJson(_$_WeatherDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dt': instance.time,
      'timezone': instance.timezone,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'lat': instance.lat,
      'long': instance.long,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
      'weatherId': instance.weatherId,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windDegree': instance.windDegree,
      'windGust': instance.windGust,
    };
