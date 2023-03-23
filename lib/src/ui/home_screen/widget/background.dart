


import 'package:atmostra/src/const/durations.dart';
import 'package:flutter/material.dart';


part 'background.painter.dart';

// todo : cloudy
class SkyBackground extends ImplicitlyAnimatedWidget{
  const SkyBackground({
    super.key,
    super.duration = celestialDuration,
    required this.colors,
    required this.bottom,
  });

  final List<Color> colors;
  final Alignment bottom;

  @override
  AnimatedWidgetBaseState<SkyBackground> createState() => _SkyBackgroundState();
}


class _SkyBackgroundState extends AnimatedWidgetBaseState<SkyBackground>{

  ColorListTween? _colors;
  AlignmentTween? _alignment;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    // print('😍forEachTween');

    _colors = visitor(
        _colors,
        widget.colors,
            (value) => ColorListTween(begin: value as List<Color>, end: widget.colors)
    ) as ColorListTween?;

    _alignment = visitor(
        _alignment,
        widget.bottom,
            (value) => AlignmentTween(begin: value, end: widget.bottom)
    ) as AlignmentTween?;
  }

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      size: Size.infinite,
      painter: _SkyBackgroundPainter(
          colors: _colors!.evaluate(animation),
          bottomAlign: _alignment!.evaluate(animation)
      ),
    );
  }

}






class ColorListTween extends Tween<List<Color>>{

  ColorListTween({
    super.begin,
    super.end
  });

  @override
  List<Color> lerp(double t) {
    return List.generate(begin!.length, (index) => Color.lerp(begin![index], end![index], t)!);
  }
}


