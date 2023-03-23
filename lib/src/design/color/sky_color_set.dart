


import 'package:flutter/material.dart';


enum SkyColorSet{

  dawn(_dawn),
  sunrise(_sunrise),
  noon(_noon),
  sunset(_sunset),
  afternoon(_afternoon),
  midnight(_midnight);

  const SkyColorSet(this.colors);
  final List<Color> colors;
}

const List<Color> _dawn = [
  Color(0xFF040809),
  Color(0xFF191B27),
  Color(0xFF454359),
  Color(0xFF746E90),
  Color(0xFFD8B7B1),
];

const List<Color> _sunrise = [
  Color(0xFF08134B),
  Color(0xFF0F1F6A),
  Color(0xFF1D40A2),
  Color(0xFF3E83D0),
  Color(0xFFF6A267),
];


const List<Color> _noon = [
  Color(0xFF0077C7),
  Color(0xFF1184CD),
  Color(0xFF4699DD),
  Color(0xFF86BEEF),
  Color(0xFFC0E2FD)
];

const List<Color> _sunset = [
  Color(0xff1f005c),
  Color(0xff5b0060),
  Color(0xff870160),
  Color(0xffca485c),
  Color(0xffffb56b)
];


const List<Color> _afternoon = [
  Color(0xFF0B040A),
  Color(0xFF0B0F1B),
  Color(0xFF0E1C36),
  Color(0xFF1F2D4F),
  Color(0xFF224378),
];


const List<Color> _midnight = [
  Color(0xFF030406),
  Color(0xFF0A0B0F),
  Color(0xFF13151A),
  Color(0xFF1C1F24),
  Color(0xFF25262B),
];