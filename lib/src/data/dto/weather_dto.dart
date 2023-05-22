
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.g.dart';
part 'weather_dto.freezed.dart';

/// todo : It would be better if I could get name from JsonKey like rain.1h.
@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required int id,
    required String name,
    required int timezone,
    @JsonKey(name: 'dt', readValue: _timeFromJson) required int time,
    @JsonKey(readValue: _countryFromJson) required String country,
    @JsonKey(readValue: _sunriseFromJson) required int sunrise,
    @JsonKey(readValue: _sunsetFromJson) required int sunset,
    required Coord coord,
    required List<Weather> weather,
    required Main main,
    required int visibility,
    required Wind wind,
    required Clouds clouds,
    @JsonKey(name: 'rain', readValue: _rainFromJson) required double rain,
    @JsonKey(name: 'snow', readValue: _snowFromJson) required double snow,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);
}

@freezed
class Coord with _$Coord {
  const factory Coord({
    required double lon,
    required double lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required int pressure,
    required int humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    required double speed,
    required int deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  const factory Clouds({
    required int all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}


int _timeFromJson(Map<dynamic, dynamic> json, String key) => json[key]*1000 as int;

// sys
String _countryFromJson(Map<dynamic, dynamic> json, String key) => json['sys']['country'] as String;
int _sunriseFromJson(Map<dynamic, dynamic> json, String key) => (json['sys']['sunrise'] * 1000) as int;
int _sunsetFromJson(Map<dynamic, dynamic> json, String key) => (json['sys']['sunset'] * 1000) as int;

double _rainFromJson(Map<dynamic, dynamic> json, String key) {
  print('🚩 ${json['rain']} /////$json');
  return json['rain']?['1h'] ?? 0.0;
}
double _snowFromJson(Map<dynamic, dynamic> json, String key) => json['snow']?['1h'] ?? 0.0;
