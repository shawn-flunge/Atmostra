

import 'package:flutter/material.dart';


// todo : 이름 정하기
class TempButton extends StatefulWidget {
  const TempButton({Key? key}) : super(key: key);

  @override
  State<TempButton> createState() => _TempButtonState();
}

class _TempButtonState extends State<TempButton> {
  final ValueNotifier<Offset> pulled = ValueNotifier(Offset.zero);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details){
        print(details.localPosition);
      },
      onVerticalDragEnd: (_){
        print('dragEnd');
      },
      child: SizedBox(
        width: 36,
        height: 36,
        child: CustomPaint(
          size: Size.infinite,
          painter: TempPainter(
            // animation: _controller
          ),
        ),
      ),
    );
  }
}

class TempPainter extends CustomPainter{

  final _paint = Paint()..color=Colors.white..style=PaintingStyle.stroke..strokeWidth=5..strokeCap=StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {

    final y = 20.0;

    final Path path = Path()
    ..moveTo(0, size.height/3 + y)
    ..lineTo(size.width/2, 0+y)
    ..lineTo(size.width, size.height/3+y);

    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}