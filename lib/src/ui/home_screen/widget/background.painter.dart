
part of 'background.dart';

class _SkyBackgroundPainter extends CustomPainter{

  _SkyBackgroundPainter({
    required this.planet
  });

  final PlanetDto planet;

  double _convertRadiusToSigma(double radius) {
    return radius > 0 ? radius * 0.57735 + 0.5 : 0;
  }

  double get blurSigma => _convertRadiusToSigma(70);

  // static const _celestialRadius = 50.0;
  static const double _sunRadius = 45.0;
  static const double _moonRadius = 40.0;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final painter = Paint()..shader=LinearGradient(
        colors: planet.colors,
        begin: Alignment(planet.position, -1),
        end: Alignment(1-planet.position, 1)
    ).createShader(rect);


    // fill the background color
    canvas.drawRect(rect, painter);

    final r = size.height * 0.8;


    // calculate the radian of the device width using r
    final base = math.acos(size.width / 2 / r);
    // final circular = base +(math.pi/2 - base) * 2 * planet.position;
    final circular = base +(math.pi/2 - base) * 2 * planet.position;

    // move the origin to bottomCenter and add the calculated position
    final x = size.width/2 + math.cos(circular) * r;
    final y = size.height - math.sin(circular) * r;
    final center = Offset(x, y);

    if(planet.isDay){

      final Paint sun = Paint()..color=const Color(0xffFFFBB3);
      final Paint halo = Paint()..color=const Color(0xffFFFEE6)..maskFilter=MaskFilter.blur(BlurStyle.normal, blurSigma);

      canvas.drawCircle(center, _sunRadius, halo);
      canvas.drawCircle(center, _sunRadius, sun);

    } else{

      final Paint crater = Paint()..color=const Color(0xFF8f8b88);
      final Paint moon = Paint()..color=const Color(0xFFD6C8BB);
      final Paint halo = Paint()..color=const Color(0xFFD6C8BB)..maskFilter=MaskFilter.blur(BlurStyle.outer, blurSigma);

      final c1 = center + const Offset(25,10);
      final c2 = center + const Offset(-22,-10);
      final c3 = center + const Offset(21,-15);
      final c4 = center + const Offset(1,-25);
      final c5 = center + const Offset(10,15);
      final c6 = center + const Offset(-17,22);

      canvas.drawCircle(center, _moonRadius, moon);
      canvas.drawCircle(center, _moonRadius, halo);

      canvas.drawCircle(c1, 8, crater);
      canvas.drawCircle(c2, 7, crater);
      canvas.drawCircle(c3, 5.5, crater);
      canvas.drawCircle(c4, 4, crater);
      canvas.drawCircle(c5, 2, crater);
      canvas.drawCircle(c6, 3, crater);

      const dist = 7.0;
      const shadowAngle = math.pi*0.6;
      final circleShadow = Offset(math.sin(shadowAngle) * dist, math.cos(shadowAngle) * dist);

      final Path outer = Path()
        ..addArc(Rect.fromCenter(center: center, width: _moonRadius*2, height: _moonRadius*2), 0, math.pi*2);

      final Path inner = Path()
        ..addArc(Rect.fromCenter(center: center+circleShadow, width: _moonRadius*2, height: _moonRadius*2), 0, math.pi*2);

      final Path innerShadow = Path.combine(PathOperation.difference, outer, inner);
      canvas.drawPath(innerShadow, Paint()..color=Colors.grey..strokeWidth=1);

    }

  }

  @override
  bool shouldRepaint(_SkyBackgroundPainter oldDelegate) => oldDelegate.planet != planet;
      // oldDelegate.colors.first != colors.first ||
      // oldDelegate.bottomAlign != bottomAlign;
}
