
part of 'background.dart';

class _SkyBackgroundPainter extends CustomPainter{

  _SkyBackgroundPainter({
    required this.planet
  });

  final PlanetDto planet;

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


    if(planet.isDay){
      canvas.drawCircle(Offset(x, y), 50, Paint()..color=Colors.red);
    } else{
      canvas.drawCircle(Offset(x, y), 40, Paint()..color=Colors.blue);
    }

  }

  @override
  bool shouldRepaint(_SkyBackgroundPainter oldDelegate) => oldDelegate.planet != planet;
      // oldDelegate.colors.first != colors.first ||
      // oldDelegate.bottomAlign != bottomAlign;
}
