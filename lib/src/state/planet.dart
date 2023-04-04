

import 'package:atmostra/src/data/dto/weather_dto.dart';
import 'package:atmostra/src/data/remote/open_weather_api.dart';
import 'package:flutter/material.dart';

class Planets extends ChangeNotifier{

  // todo : load user setting
  Planets(){
    _weatherApi = OpenWeatherApi();
  }

  late OpenWeatherApi _weatherApi;

  PlanetDto? selected;
  final List<PlanetDto> planets = [];

  getWeatherByName(String name) async{
    final weather = await _weatherApi.getWeatherByName(name: name);
    if(weather == null) return;
    final planet = PlanetDto(
      name: weather.name,
      weather: weather,
    );
    planets.add(planet);
    notifyListeners();
  }

}


enum PlanetType{
  earth,
  custom,
}

class PlanetDto{

  const PlanetDto({
    required this.name,
    this.type = PlanetType.earth,
    required this.weather
  });

  final String name;
  final PlanetType type;
  final WeatherDto weather;
}