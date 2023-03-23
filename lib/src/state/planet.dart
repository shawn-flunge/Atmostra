

import 'package:flutter/material.dart';

class Planets extends ChangeNotifier{

  Planets(){
    planets.add(
      PlanetDto(name: 'E-KOREA-SEOUL', dateTime: DateTime.now())
    );

    selected = planets.first;
    print('${planets.first.name}');
  }


  PlanetDto? selected;
  final List<PlanetDto> planets = [];


}




class PlanetDto{

  const PlanetDto({
    required this.name,
    required this.dateTime
  });

  final String name;
  final DateTime dateTime;
}