
part of 'background.dart';

class _SkyBackgroundPainter extends CustomPainter{

  _SkyBackgroundPainter({
    // required this.colors,
    // required this.bottomAlign,
    required this.planet
  });

  // final List<Color> colors;
  // final Alignment bottomAlign;

  final PlanetDto planet;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    // final painter = Paint()..shader=LinearGradient(
    //     colors: colors,
    //     begin: Alignment.topCenter,
    //     end: bottomAlign
    // ).createShader(rect);

    final painter = Paint()..shader=LinearGradient(
        colors: planet.colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomRight
    ).createShader(rect);


    canvas.drawRect(rect, painter);
  }

  @override
  bool shouldRepaint(_SkyBackgroundPainter oldDelegate) => oldDelegate.planet != planet;
      // oldDelegate.colors.first != colors.first ||
      // oldDelegate.bottomAlign != bottomAlign;
}
