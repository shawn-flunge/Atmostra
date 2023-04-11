
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.g.dart';
part 'weather_dto.freezed.dart';

@freezed
class WeatherDto with _$WeatherDto{

  const factory WeatherDto({
    @Default(0) int id,
    required String name,
    @JsonKey(name: 'dt', readValue: _timeFromJson) required int time,
    @Default(0) int timezone,

    @JsonKey(readValue: _countryFromJson) required String country,
    @JsonKey(readValue: _sunriseFromJson) required int sunrise,
    @JsonKey(readValue: _sunsetFromJson) required int sunset,

    @JsonKey(readValue: _latFromJson) required double lat,
    @JsonKey(readValue: _longFromJson) required double long,

    @JsonKey(readValue: _mainFromJson,includeFromJson: true) required String main,
    @JsonKey(readValue: _descriptionFromJson, includeFromJson: true) required String description,
    @JsonKey(readValue: _iconFromJson) required String icon,
    @JsonKey(readValue: _weatherIdFromJson) required int weatherId,

    @JsonKey(readValue: _tempFromJson) required double temp,
    @JsonKey(readValue: _feelsLikeFromJson) required double feelsLike,
    @JsonKey(readValue: _tempMinFromJson) required double tempMin,
    @JsonKey(readValue: _tempMaxFromJson) required double tempMax,
    @JsonKey(readValue: _pressureFromJson) required int pressure,
    @JsonKey(readValue: _humidityFromJson) required int humidity,


    @JsonKey(fromJson: _cloudsFromJson) required int clouds,
    @Default(0) int visibility,

    @JsonKey(readValue: _windSpeedFromJson) required double windSpeed,
    @JsonKey(readValue: _windDegreeFromJson) required int windDegree,
    @JsonKey(readValue: _windGustFromJson) required double windGust,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);
}

int _timeFromJson(Map<dynamic, dynamic> json, String key) => json[key]*1000 as int;

// sys
String _countryFromJson(Map<dynamic, dynamic> json, String key) => json['sys']['country'] as String;
int _sunriseFromJson(Map<dynamic, dynamic> json, String key) => (json['sys']['sunrise'] * 1000) as int;
int _sunsetFromJson(Map<dynamic, dynamic> json, String key) => (json['sys']['sunset'] * 1000) as int;

// coord
double _latFromJson(Map<dynamic, dynamic> json, String key) => json['coord']['lat'] as double;
double _longFromJson(Map<dynamic, dynamic> json, String key) => json['coord']['lon'] as double;

// weather
String _mainFromJson(Map<dynamic, dynamic> json, String key) => json['weather'].first['main'] as String;
String _descriptionFromJson(Map<dynamic, dynamic> json, String key) => json['weather'].first['description'] as String;
String _iconFromJson(Map<dynamic, dynamic> json, String key) => json['weather'].first['icon'] as String;
int _weatherIdFromJson(Map<dynamic, dynamic> json, String key) => json['weather'].first['id'] as int;

// main
double _tempFromJson(Map<dynamic, dynamic> json, String key) => json['main']['temp'] as double;
double _feelsLikeFromJson(Map<dynamic, dynamic> json, String key) => json['main']['feels_like'] as double;
double _tempMinFromJson(Map<dynamic, dynamic> json, String key) => json['main']['temp_min'] as double;
double _tempMaxFromJson(Map<dynamic, dynamic> json, String key) => json['main']['temp_max'] as double;
int _pressureFromJson(Map<dynamic, dynamic> json, String key) => json['main']['pressure'] as int;
int _humidityFromJson(Map<dynamic, dynamic> json, String key) => json['main']['humidity'] as int;

// clouds
int _cloudsFromJson(Map<String, dynamic> json) => json['all'] as int;

// wind
double _windSpeedFromJson(Map<dynamic, dynamic> json, String key) => json['wind']['speed'] as double;
double _windGustFromJson(Map<dynamic, dynamic> json, String key) => (json['wind']['gust'] ?? 0.0) as double;
int _windDegreeFromJson(Map<dynamic, dynamic> json, String key) => json['wind']['deg'] as int;

