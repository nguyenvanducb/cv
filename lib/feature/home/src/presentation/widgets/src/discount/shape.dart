import 'package:flutter/material.dart';
import '../../../../../../../core_ui/app_colors.dart';

// class CustomRectangle extends StatelessWidget {
class CustomRectangle extends StatelessWidget {
  dynamic colorBG;
  CustomRectangle({super.key, this.colorBG = AppColors.vDiscount});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(4),
            ),
            color: colorBG.withOpacity(0.7),
          ),
          child: Column(children: const [
            SizedBox(height: 3),
            Text("49%",style:TextStyle(fontSize: 15,color: Colors.red),),
            Text("Giảm", style:TextStyle(fontSize: 15,color: Colors.white),)
          ]),
        ),
        SizedBox(
          width: 40,
          height: 10,
          child: CustomPaint(
            painter: _CustomTrianglePainter(colorBG: colorBG),
          ),
        )
      ],
    );
  }
}

class _CustomTrianglePainter extends CustomPainter {
  dynamic colorBG;
  _CustomTrianglePainter({this.colorBG = AppColors.vDiscount});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = colorBG.withOpacity(0.7)
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    var trianglePath = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height * 0.1)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(trianglePath, paint);
  }

  @override
  bool shouldRepaint(_CustomTrianglePainter oldDelegate) => false;
}
