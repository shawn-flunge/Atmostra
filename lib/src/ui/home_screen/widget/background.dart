
import 'dart:math' as math;

import 'package:atmostra/src/const/durations.dart';
import 'package:atmostra/src/state/planet.dart';
import 'package:flutter/material.dart';


part 'background.painter.dart';

// todo : cloudy
class SkyBackground extends ImplicitlyAnimatedWidget{
  const SkyBackground({
    super.key,
    super.duration = celestialDuration,
    required this.planet,
  });

  final PlanetDto planet;

  @override
  AnimatedWidgetBaseState<SkyBackground> createState() => _SkyBackgroundState();
}


class _SkyBackgroundState extends AnimatedWidgetBaseState<SkyBackground>{

  PlanetDtoTween? _planetDto2Tween;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _planetDto2Tween = visitor(
        _planetDto2Tween,
        widget.planet,
        (value) => PlanetDtoTween(begin: value as PlanetDto, end: widget.planet)
    ) as PlanetDtoTween?;
  }

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      size: Size.infinite,
      painter: _SkyBackgroundPainter(
        planet: _planetDto2Tween!.evaluate(animation)
      ),
    );
  }

}







