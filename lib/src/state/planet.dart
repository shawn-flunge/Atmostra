

import 'package:atmostra/src/data/dto/weather_dto.dart';
import 'package:atmostra/src/data/source/open_weather_api.dart';
import 'package:atmostra/src/util/extension/comparable_list.dart';
import 'package:atmostra/src/util/mixin/comparable_mixin.dart';
import 'package:flutter/material.dart';

class Planets extends ChangeNotifier{

  // todo : load user setting
  Planets(){
    _weatherApi = OpenWeatherApi();
  }

  late OpenWeatherApi _weatherApi;

  PlanetDto? selected;
  final List<PlanetDto> list = [];

  getWeatherByName(String name) async{

    final hasPlanet = list.hasData(name);
    if(hasPlanet.$0) return;

    final weather = await _weatherApi.getWeatherByName(name: name);
    if(weather == null) return;
    final planet = PlanetDto(
      name: name,
      weather: weather,
    );

    list.add(planet);
    notifyListeners();
  }

}


enum PlanetType{
  earth,
  custom,
}

class PlanetDto with ComparableMixin{

  PlanetDto({
    required this.name,
    this.type = PlanetType.earth,
    required this.weather,
  }){
    requestAt = DateTime.now();
    identifier = name;
  }

  final String name;
  final PlanetType type;
  final WeatherDto weather;
}