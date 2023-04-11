// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) {
  return _WeatherDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt', readValue: _timeFromJson)
  int get time => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  @JsonKey(readValue: _countryFromJson)
  String get country => throw _privateConstructorUsedError;
  @JsonKey(readValue: _sunriseFromJson)
  int get sunrise => throw _privateConstructorUsedError;
  @JsonKey(readValue: _sunsetFromJson)
  int get sunset => throw _privateConstructorUsedError;
  @JsonKey(readValue: _latFromJson)
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(readValue: _longFromJson)
  double get long => throw _privateConstructorUsedError;
  @JsonKey(readValue: _mainFromJson, includeFromJson: true)
  String get main => throw _privateConstructorUsedError;
  @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(readValue: _iconFromJson)
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(readValue: _weatherIdFromJson)
  int get weatherId => throw _privateConstructorUsedError;
  @JsonKey(readValue: _tempFromJson)
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(readValue: _feelsLikeFromJson)
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(readValue: _tempMinFromJson)
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(readValue: _tempMaxFromJson)
  double get tempMax => throw _privateConstructorUsedError;
  @JsonKey(readValue: _pressureFromJson)
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(readValue: _humidityFromJson)
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _cloudsFromJson)
  int get clouds => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  @JsonKey(readValue: _windSpeedFromJson)
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(readValue: _windDegreeFromJson)
  int get windDegree => throw _privateConstructorUsedError;
  @JsonKey(readValue: _windGustFromJson)
  double get windGust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDtoCopyWith<WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDtoCopyWith<$Res> {
  factory $WeatherDtoCopyWith(
          WeatherDto value, $Res Function(WeatherDto) then) =
      _$WeatherDtoCopyWithImpl<$Res, WeatherDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'dt', readValue: _timeFromJson)
          int time,
      int timezone,
      @JsonKey(readValue: _countryFromJson)
          String country,
      @JsonKey(readValue: _sunriseFromJson)
          int sunrise,
      @JsonKey(readValue: _sunsetFromJson)
          int sunset,
      @JsonKey(readValue: _latFromJson)
          double lat,
      @JsonKey(readValue: _longFromJson)
          double long,
      @JsonKey(readValue: _mainFromJson, includeFromJson: true)
          String main,
      @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
          String description,
      @JsonKey(readValue: _iconFromJson)
          String icon,
      @JsonKey(readValue: _weatherIdFromJson)
          int weatherId,
      @JsonKey(readValue: _tempFromJson)
          double temp,
      @JsonKey(readValue: _feelsLikeFromJson)
          double feelsLike,
      @JsonKey(readValue: _tempMinFromJson)
          double tempMin,
      @JsonKey(readValue: _tempMaxFromJson)
          double tempMax,
      @JsonKey(readValue: _pressureFromJson)
          int pressure,
      @JsonKey(readValue: _humidityFromJson)
          int humidity,
      @JsonKey(fromJson: _cloudsFromJson)
          int clouds,
      int visibility,
      @JsonKey(readValue: _windSpeedFromJson)
          double windSpeed,
      @JsonKey(readValue: _windDegreeFromJson)
          int windDegree,
      @JsonKey(readValue: _windGustFromJson)
          double windGust});
}

/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res, $Val extends WeatherDto>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? time = null,
    Object? timezone = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? lat = null,
    Object? long = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
    Object? weatherId = null,
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? clouds = null,
    Object? visibility = null,
    Object? windSpeed = null,
    Object? windDegree = null,
    Object? windGust = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      weatherId: null == weatherId
          ? _value.weatherId
          : weatherId // ignore: cast_nullable_to_non_nullable
              as int,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windGust: null == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDtoCopyWith<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  factory _$$_WeatherDtoCopyWith(
          _$_WeatherDto value, $Res Function(_$_WeatherDto) then) =
      __$$_WeatherDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'dt', readValue: _timeFromJson)
          int time,
      int timezone,
      @JsonKey(readValue: _countryFromJson)
          String country,
      @JsonKey(readValue: _sunriseFromJson)
          int sunrise,
      @JsonKey(readValue: _sunsetFromJson)
          int sunset,
      @JsonKey(readValue: _latFromJson)
          double lat,
      @JsonKey(readValue: _longFromJson)
          double long,
      @JsonKey(readValue: _mainFromJson, includeFromJson: true)
          String main,
      @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
          String description,
      @JsonKey(readValue: _iconFromJson)
          String icon,
      @JsonKey(readValue: _weatherIdFromJson)
          int weatherId,
      @JsonKey(readValue: _tempFromJson)
          double temp,
      @JsonKey(readValue: _feelsLikeFromJson)
          double feelsLike,
      @JsonKey(readValue: _tempMinFromJson)
          double tempMin,
      @JsonKey(readValue: _tempMaxFromJson)
          double tempMax,
      @JsonKey(readValue: _pressureFromJson)
          int pressure,
      @JsonKey(readValue: _humidityFromJson)
          int humidity,
      @JsonKey(fromJson: _cloudsFromJson)
          int clouds,
      int visibility,
      @JsonKey(readValue: _windSpeedFromJson)
          double windSpeed,
      @JsonKey(readValue: _windDegreeFromJson)
          int windDegree,
      @JsonKey(readValue: _windGustFromJson)
          double windGust});
}

/// @nodoc
class __$$_WeatherDtoCopyWithImpl<$Res>
    extends _$WeatherDtoCopyWithImpl<$Res, _$_WeatherDto>
    implements _$$_WeatherDtoCopyWith<$Res> {
  __$$_WeatherDtoCopyWithImpl(
      _$_WeatherDto _value, $Res Function(_$_WeatherDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? time = null,
    Object? timezone = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? lat = null,
    Object? long = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
    Object? weatherId = null,
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? clouds = null,
    Object? visibility = null,
    Object? windSpeed = null,
    Object? windDegree = null,
    Object? windGust = null,
  }) {
    return _then(_$_WeatherDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      weatherId: null == weatherId
          ? _value.weatherId
          : weatherId // ignore: cast_nullable_to_non_nullable
              as int,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windGust: null == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDto implements _WeatherDto {
  const _$_WeatherDto(
      {this.id = 0,
      required this.name,
      @JsonKey(name: 'dt', readValue: _timeFromJson)
          required this.time,
      this.timezone = 0,
      @JsonKey(readValue: _countryFromJson)
          required this.country,
      @JsonKey(readValue: _sunriseFromJson)
          required this.sunrise,
      @JsonKey(readValue: _sunsetFromJson)
          required this.sunset,
      @JsonKey(readValue: _latFromJson)
          required this.lat,
      @JsonKey(readValue: _longFromJson)
          required this.long,
      @JsonKey(readValue: _mainFromJson, includeFromJson: true)
          required this.main,
      @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
          required this.description,
      @JsonKey(readValue: _iconFromJson)
          required this.icon,
      @JsonKey(readValue: _weatherIdFromJson)
          required this.weatherId,
      @JsonKey(readValue: _tempFromJson)
          required this.temp,
      @JsonKey(readValue: _feelsLikeFromJson)
          required this.feelsLike,
      @JsonKey(readValue: _tempMinFromJson)
          required this.tempMin,
      @JsonKey(readValue: _tempMaxFromJson)
          required this.tempMax,
      @JsonKey(readValue: _pressureFromJson)
          required this.pressure,
      @JsonKey(readValue: _humidityFromJson)
          required this.humidity,
      @JsonKey(fromJson: _cloudsFromJson)
          required this.clouds,
      this.visibility = 0,
      @JsonKey(readValue: _windSpeedFromJson)
          required this.windSpeed,
      @JsonKey(readValue: _windDegreeFromJson)
          required this.windDegree,
      @JsonKey(readValue: _windGustFromJson)
          required this.windGust});

  factory _$_WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDtoFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'dt', readValue: _timeFromJson)
  final int time;
  @override
  @JsonKey()
  final int timezone;
  @override
  @JsonKey(readValue: _countryFromJson)
  final String country;
  @override
  @JsonKey(readValue: _sunriseFromJson)
  final int sunrise;
  @override
  @JsonKey(readValue: _sunsetFromJson)
  final int sunset;
  @override
  @JsonKey(readValue: _latFromJson)
  final double lat;
  @override
  @JsonKey(readValue: _longFromJson)
  final double long;
  @override
  @JsonKey(readValue: _mainFromJson, includeFromJson: true)
  final String main;
  @override
  @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
  final String description;
  @override
  @JsonKey(readValue: _iconFromJson)
  final String icon;
  @override
  @JsonKey(readValue: _weatherIdFromJson)
  final int weatherId;
  @override
  @JsonKey(readValue: _tempFromJson)
  final double temp;
  @override
  @JsonKey(readValue: _feelsLikeFromJson)
  final double feelsLike;
  @override
  @JsonKey(readValue: _tempMinFromJson)
  final double tempMin;
  @override
  @JsonKey(readValue: _tempMaxFromJson)
  final double tempMax;
  @override
  @JsonKey(readValue: _pressureFromJson)
  final int pressure;
  @override
  @JsonKey(readValue: _humidityFromJson)
  final int humidity;
  @override
  @JsonKey(fromJson: _cloudsFromJson)
  final int clouds;
  @override
  @JsonKey()
  final int visibility;
  @override
  @JsonKey(readValue: _windSpeedFromJson)
  final double windSpeed;
  @override
  @JsonKey(readValue: _windDegreeFromJson)
  final int windDegree;
  @override
  @JsonKey(readValue: _windGustFromJson)
  final double windGust;

  @override
  String toString() {
    return 'WeatherDto(id: $id, name: $name, time: $time, timezone: $timezone, country: $country, sunrise: $sunrise, sunset: $sunset, lat: $lat, long: $long, main: $main, description: $description, icon: $icon, weatherId: $weatherId, temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDegree: $windDegree, windGust: $windGust)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.weatherId, weatherId) ||
                other.weatherId == weatherId) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        time,
        timezone,
        country,
        sunrise,
        sunset,
        lat,
        long,
        main,
        description,
        icon,
        weatherId,
        temp,
        feelsLike,
        tempMin,
        tempMax,
        pressure,
        humidity,
        clouds,
        visibility,
        windSpeed,
        windDegree,
        windGust
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDtoCopyWith<_$_WeatherDto> get copyWith =>
      __$$_WeatherDtoCopyWithImpl<_$_WeatherDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDtoToJson(
      this,
    );
  }
}

abstract class _WeatherDto implements WeatherDto {
  const factory _WeatherDto(
      {final int id,
      required final String name,
      @JsonKey(name: 'dt', readValue: _timeFromJson)
          required final int time,
      final int timezone,
      @JsonKey(readValue: _countryFromJson)
          required final String country,
      @JsonKey(readValue: _sunriseFromJson)
          required final int sunrise,
      @JsonKey(readValue: _sunsetFromJson)
          required final int sunset,
      @JsonKey(readValue: _latFromJson)
          required final double lat,
      @JsonKey(readValue: _longFromJson)
          required final double long,
      @JsonKey(readValue: _mainFromJson, includeFromJson: true)
          required final String main,
      @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
          required final String description,
      @JsonKey(readValue: _iconFromJson)
          required final String icon,
      @JsonKey(readValue: _weatherIdFromJson)
          required final int weatherId,
      @JsonKey(readValue: _tempFromJson)
          required final double temp,
      @JsonKey(readValue: _feelsLikeFromJson)
          required final double feelsLike,
      @JsonKey(readValue: _tempMinFromJson)
          required final double tempMin,
      @JsonKey(readValue: _tempMaxFromJson)
          required final double tempMax,
      @JsonKey(readValue: _pressureFromJson)
          required final int pressure,
      @JsonKey(readValue: _humidityFromJson)
          required final int humidity,
      @JsonKey(fromJson: _cloudsFromJson)
          required final int clouds,
      final int visibility,
      @JsonKey(readValue: _windSpeedFromJson)
          required final double windSpeed,
      @JsonKey(readValue: _windDegreeFromJson)
          required final int windDegree,
      @JsonKey(readValue: _windGustFromJson)
          required final double windGust}) = _$_WeatherDto;

  factory _WeatherDto.fromJson(Map<String, dynamic> json) =
      _$_WeatherDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'dt', readValue: _timeFromJson)
  int get time;
  @override
  int get timezone;
  @override
  @JsonKey(readValue: _countryFromJson)
  String get country;
  @override
  @JsonKey(readValue: _sunriseFromJson)
  int get sunrise;
  @override
  @JsonKey(readValue: _sunsetFromJson)
  int get sunset;
  @override
  @JsonKey(readValue: _latFromJson)
  double get lat;
  @override
  @JsonKey(readValue: _longFromJson)
  double get long;
  @override
  @JsonKey(readValue: _mainFromJson, includeFromJson: true)
  String get main;
  @override
  @JsonKey(readValue: _descriptionFromJson, includeFromJson: true)
  String get description;
  @override
  @JsonKey(readValue: _iconFromJson)
  String get icon;
  @override
  @JsonKey(readValue: _weatherIdFromJson)
  int get weatherId;
  @override
  @JsonKey(readValue: _tempFromJson)
  double get temp;
  @override
  @JsonKey(readValue: _feelsLikeFromJson)
  double get feelsLike;
  @override
  @JsonKey(readValue: _tempMinFromJson)
  double get tempMin;
  @override
  @JsonKey(readValue: _tempMaxFromJson)
  double get tempMax;
  @override
  @JsonKey(readValue: _pressureFromJson)
  int get pressure;
  @override
  @JsonKey(readValue: _humidityFromJson)
  int get humidity;
  @override
  @JsonKey(fromJson: _cloudsFromJson)
  int get clouds;
  @override
  int get visibility;
  @override
  @JsonKey(readValue: _windSpeedFromJson)
  double get windSpeed;
  @override
  @JsonKey(readValue: _windDegreeFromJson)
  int get windDegree;
  @override
  @JsonKey(readValue: _windGustFromJson)
  double get windGust;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDtoCopyWith<_$_WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}
