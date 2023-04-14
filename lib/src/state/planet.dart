

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
      colors: _getBackgroundColor(weather)
    );
    selected = planet;
    list.add(planet);
    notifyListeners();
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
  }){
    requestAt = DateTime.now();
    identifier = name;
  }

  final String name;
  final WeatherDto weather;
  final List<Color> colors;

  PlanetDto lerp(PlanetDto a, PlanetDto b, double t){
    return PlanetDto(
      name: b.name,
      weather: b.weather,
      colors: _ColorListTween(begin: a.colors, end: b.colors).lerp(t)
    );
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