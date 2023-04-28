


import 'package:atmostra/src/data/dto/weather_dto.dart';
import 'package:atmostra/src/data/source/open_weather_api.dart';
import 'package:atmostra/src/design/color/sky_color_set.dart';
import 'package:atmostra/src/util/extension/comparable_list.dart';
import 'package:atmostra/src/util/mixin/comparable_mixin.dart';
import 'package:flutter/material.dart';

class Planets extends ChangeNotifier{

  // todo : load user setting
  Planets(){
    _weatherApi = OpenWeatherApi();
    getWeatherByName('seoul');
  }

  late OpenWeatherApi _weatherApi;

  PlanetDto? selected;
  final List<PlanetDto> list = [];

  getWeatherByName(String name) async{

    final hasPlanet = list.hasData(name);
    if(hasPlanet.$0){
      return;
    }

    final weather = await _weatherApi.getWeatherByName(name: name);
    if(weather == null) return;

    final planet = PlanetDto(
      name: weather.name,
      weather: weather,
      position: _computePosition(weather),
      colors: _getBackgroundColor(weather)
    );
    selected = planet;
    list.add(planet);
    notifyListeners();
  }

  double _computePosition(WeatherDto weatherDto){

    final now = DateTime.now();
    if(now.millisecondsSinceEpoch > weatherDto.sunset){
      final tomorrow = DateTime(now.year, now.month, now.day+1, 4).millisecondsSinceEpoch;

      final base = tomorrow - weatherDto.sunset;
      final current = now.millisecondsSinceEpoch - weatherDto.sunset;

      return current/base;
    } else{
      final base = weatherDto.sunset - weatherDto.sunrise;
      final current = now.millisecondsSinceEpoch - weatherDto.sunrise;
      // final current = DateTime.now().toUtc().add(Duration(seconds: weatherDto.time));
      return current/base;
    }
  }

  List<Color> _getBackgroundColor(WeatherDto weather){

    final time = DateTime.now().toUtc().add(Duration(seconds: weather.timezone));
    final sunset = DateTime.fromMillisecondsSinceEpoch(weather.sunset).add(Duration(seconds: weather.timezone)).toUtc();
    final sunrise = DateTime.fromMillisecondsSinceEpoch(weather.sunrise).add(Duration(seconds: weather.timezone)).toUtc();

    if(time.hour>23){
      return SkyColorSet.midnight.colors;

    } else if(time.isAfter(sunset.add(const Duration(hours: 1)))){
      return SkyColorSet.afternoon.colors;

    } else if(time.isAfter(sunset.subtract(const Duration(hours: 1)))){
      return SkyColorSet.sunset.colors;

    } else if(time.hour>9){
      return SkyColorSet.noon.colors;

    } else if(time.isAfter(sunrise)){
      return SkyColorSet.sunrise.colors;

    } else if(time.hour > 4){
      return SkyColorSet.dawn.colors;
    } else{
      return SkyColorSet.midnight.colors;
    }
  }

}

class PlanetDto with ComparableMixin{

  PlanetDto({
    required this.name,
    required this.colors,
    required this.weather,
    required this.position,
  }){
    requestAt = DateTime.now();
    identifier = name;
  }

  final String name;
  final WeatherDto weather;
  final List<Color> colors;
  final double position;

  bool get isDay {
    final now = DateTime.now().toUtc().add(Duration(seconds: weather.timezone)).millisecondsSinceEpoch;
    final sunset = DateTime.fromMillisecondsSinceEpoch(weather.sunset).millisecondsSinceEpoch;
    return now < sunset;
  }
  bool get isNight => !isDay;

  PlanetDto lerp(PlanetDto a, PlanetDto b, double t){
    final condition = isTWithinAorB(a.position, b.position, t);

    return PlanetDto(
      name: condition ? a.name : b.name,
        weather: condition ? a.weather : b.weather,
        position: _RadianTween(begin: a.position, end: b.position).lerp(t),
        colors: _ColorListTween(begin: a.colors, end: b.colors).lerp(t)
    );
  }
}

bool isTWithinAorB(num a, num b, t){
  return t < (1-a)/(1-a+b);
}

const double _range = 1.13;
class _RadianTween extends Tween<double>{
  _RadianTween({
    super.begin,
    super.end,
  });

  @override
  double lerp(double t) {

    final ratio = (1-begin!)/(1-begin!+end!);
    if(t < ratio){
      return begin! + (_range - begin!)*t/ratio;
    } else{
      return -_range + (_range + end!) * (t-ratio) / (1-ratio);
    }
  }
}


class _ColorListTween extends Tween<List<Color>>{

  _ColorListTween({
    super.begin,
    super.end
  });

  @override
  List<Color> lerp(double t) {
    return List.generate(begin!.length, (index) => Color.lerp(begin![index], end![index], t)!);
  }
}




class PlanetDtoTween extends Tween<PlanetDto>{

  PlanetDtoTween({
    super.begin,
    super.end
  });

  @override
  PlanetDto lerp(double t) {
    return begin!.lerp(begin!, end!, t);
  }
}