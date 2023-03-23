
part of 'background.dart';

class _SkyBackgroundPainter extends CustomPainter{

  _SkyBackgroundPainter({
    required this.colors,
    required this.bottomAlign,
  });

  final List<Color> colors;
  final Alignment bottomAlign;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final painter = Paint()..shader=LinearGradient(
        colors: colors,
        begin: Alignment.topCenter,
        end: bottomAlign
    ).createShader(rect);

    canvas.drawRect(rect, painter);
  }

  @override
  bool shouldRepaint(_SkyBackgroundPainter oldDelegate) =>
      oldDelegate.colors.first != colors.first ||
      oldDelegate.bottomAlign != bottomAlign;
}
