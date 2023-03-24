

import 'package:flutter/material.dart';


// todo : 이름 정하기
class TempButton extends StatefulWidget {
  const TempButton({Key? key}) : super(key: key);

  @override
  State<TempButton> createState() => _TempButtonState();
}

class _TempButtonState extends State<TempButton> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36,
      height: 36,
      child: CustomPaint(
        size: Size.infinite,
        painter: TempPainter(
          animation: _controller
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class TempPainter extends CustomPainter{

  TempPainter({
    required this.animation
  }) : super(repaint: animation);

  final Animation<double> animation;

  final _paint = Paint()..color=Colors.white..style=PaintingStyle.stroke..strokeWidth=5..strokeCap=StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {

    final y = 20 * animation.value;

    final Path path = Path()
    ..moveTo(0, size.height/3 + y)
    ..lineTo(size.width/2, 0+y)
    ..lineTo(size.width, size.height/3+y);

    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}