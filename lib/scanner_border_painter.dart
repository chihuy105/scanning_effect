import 'package:flutter/material.dart';

/// The [ScannerBorderPainter] for drawing a border around the scanning effect
/// You can replace this with any SVG or Widget you want
class ScannerBorderPainter extends CustomPainter {
  ScannerBorderPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.04968944, size.height * 0.05891879);
    path_0.cubicTo(
        size.width * 0.04968944,
        size.height * 0.05452166,
        size.width * 0.05316553,
        size.height * 0.05095701,
        size.width * 0.05745342,
        size.height * 0.05095701);
    path_0.lineTo(size.width * 0.3201273, size.height * 0.05095701);
    path_0.cubicTo(
        size.width * 0.3244130,
        size.height * 0.05095701,
        size.width * 0.3278913,
        size.height * 0.05452166,
        size.width * 0.3278913,
        size.height * 0.05891879);
    path_0.lineTo(size.width * 0.3278913, size.height * 0.05891879);
    path_0.cubicTo(
        size.width * 0.3278913,
        size.height * 0.06331592,
        size.width * 0.3244130,
        size.height * 0.06688057,
        size.width * 0.3201273,
        size.height * 0.06688057);
    path_0.lineTo(size.width * 0.05745342, size.height * 0.06688057);
    path_0.cubicTo(
        size.width * 0.05316553,
        size.height * 0.06688057,
        size.width * 0.04968944,
        size.height * 0.06331592,
        size.width * 0.04968944,
        size.height * 0.05891879);
    path_0.lineTo(size.width * 0.04968944, size.height * 0.05891879);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.05745342, size.height * 0.3362452);
    path_1.cubicTo(
        size.width * 0.05316553,
        size.height * 0.3362452,
        size.width * 0.04968944,
        size.height * 0.3326783,
        size.width * 0.04968944,
        size.height * 0.3282834);
    path_1.lineTo(size.width * 0.04968944, size.height * 0.05891720);
    path_1.cubicTo(
        size.width * 0.04968944,
        size.height * 0.05452006,
        size.width * 0.05316553,
        size.height * 0.05095541,
        size.width * 0.05745342,
        size.height * 0.05095541);
    path_1.lineTo(size.width * 0.05745342, size.height * 0.05095541);
    path_1.cubicTo(
        size.width * 0.06174130,
        size.height * 0.05095541,
        size.width * 0.06521739,
        size.height * 0.05452006,
        size.width * 0.06521739,
        size.height * 0.05891720);
    path_1.lineTo(size.width * 0.06521739, size.height * 0.3282834);
    path_1.cubicTo(
        size.width * 0.06521739,
        size.height * 0.3326783,
        size.width * 0.06174130,
        size.height * 0.3362452,
        size.width * 0.05745342,
        size.height * 0.3362452);
    path_1.lineTo(size.width * 0.05745342, size.height * 0.3362452);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9487174, size.height * 0.9380096);
    path_2.cubicTo(
        size.width * 0.9487174,
        size.height * 0.9424076,
        size.width * 0.9452422,
        size.height * 0.9459713,
        size.width * 0.9409534,
        size.height * 0.9459713);
    path_2.lineTo(size.width * 0.6782795, size.height * 0.9459713);
    path_2.cubicTo(
        size.width * 0.6739938,
        size.height * 0.9459713,
        size.width * 0.6705155,
        size.height * 0.9424076,
        size.width * 0.6705155,
        size.height * 0.9380096);
    path_2.lineTo(size.width * 0.6705155, size.height * 0.9380096);
    path_2.cubicTo(
        size.width * 0.6705155,
        size.height * 0.9336146,
        size.width * 0.6739938,
        size.height * 0.9300478,
        size.width * 0.6782795,
        size.height * 0.9300478);
    path_2.lineTo(size.width * 0.9409534, size.height * 0.9300478);
    path_2.cubicTo(
        size.width * 0.9452422,
        size.height * 0.9300478,
        size.width * 0.9487174,
        size.height * 0.9336146,
        size.width * 0.9487174,
        size.height * 0.9380096);
    path_2.lineTo(size.width * 0.9487174, size.height * 0.9380096);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9409534, size.height * 0.6606847);
    path_3.cubicTo(
        size.width * 0.9452422,
        size.height * 0.6606847,
        size.width * 0.9487174,
        size.height * 0.6642516,
        size.width * 0.9487174,
        size.height * 0.6686465);
    path_3.lineTo(size.width * 0.9487174, size.height * 0.9380127);
    path_3.cubicTo(
        size.width * 0.9487174,
        size.height * 0.9424108,
        size.width * 0.9452422,
        size.height * 0.9459745,
        size.width * 0.9409534,
        size.height * 0.9459745);
    path_3.lineTo(size.width * 0.9409534, size.height * 0.9459745);
    path_3.cubicTo(
        size.width * 0.9366646,
        size.height * 0.9459745,
        size.width * 0.9331894,
        size.height * 0.9424108,
        size.width * 0.9331894,
        size.height * 0.9380127);
    path_3.lineTo(size.width * 0.9331894, size.height * 0.6686465);
    path_3.cubicTo(
        size.width * 0.9331894,
        size.height * 0.6642516,
        size.width * 0.9366646,
        size.height * 0.6606847,
        size.width * 0.9409534,
        size.height * 0.6606847);
    path_3.lineTo(size.width * 0.9409534, size.height * 0.6606847);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.05745342, size.height * 0.9459172);
    path_4.cubicTo(
        size.width * 0.05316553,
        size.height * 0.9459172,
        size.width * 0.04968944,
        size.height * 0.9423535,
        size.width * 0.04968944,
        size.height * 0.9379554);
    path_4.lineTo(size.width * 0.04968944, size.height * 0.6685892);
    path_4.cubicTo(
        size.width * 0.04968944,
        size.height * 0.6641943,
        size.width * 0.05316553,
        size.height * 0.6606274,
        size.width * 0.05745342,
        size.height * 0.6606274);
    path_4.lineTo(size.width * 0.05745342, size.height * 0.6606274);
    path_4.cubicTo(
        size.width * 0.06174130,
        size.height * 0.6606274,
        size.width * 0.06521739,
        size.height * 0.6641943,
        size.width * 0.06521739,
        size.height * 0.6685892);
    path_4.lineTo(size.width * 0.06521739, size.height * 0.9379554);
    path_4.cubicTo(
        size.width * 0.06521739,
        size.height * 0.9423535,
        size.width * 0.06174130,
        size.height * 0.9459172,
        size.width * 0.05745342,
        size.height * 0.9459172);
    path_4.lineTo(size.width * 0.05745342, size.height * 0.9459172);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3278913, size.height * 0.9379554);
    path_5.cubicTo(
        size.width * 0.3278913,
        size.height * 0.9423535,
        size.width * 0.3244130,
        size.height * 0.9459172,
        size.width * 0.3201273,
        size.height * 0.9459172);
    path_5.lineTo(size.width * 0.05745342, size.height * 0.9459172);
    path_5.cubicTo(
        size.width * 0.05316553,
        size.height * 0.9459172,
        size.width * 0.04968944,
        size.height * 0.9423535,
        size.width * 0.04968944,
        size.height * 0.9379554);
    path_5.lineTo(size.width * 0.04968944, size.height * 0.9379554);
    path_5.cubicTo(
        size.width * 0.04968944,
        size.height * 0.9335573,
        size.width * 0.05316553,
        size.height * 0.9299936,
        size.width * 0.05745342,
        size.height * 0.9299936);
    path_5.lineTo(size.width * 0.3201273, size.height * 0.9299936);
    path_5.cubicTo(
        size.width * 0.3244130,
        size.height * 0.9299936,
        size.width * 0.3278913,
        size.height * 0.9335573,
        size.width * 0.3278913,
        size.height * 0.9379554);
    path_5.lineTo(size.width * 0.3278913, size.height * 0.9379554);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.9409534, size.height * 0.05101242);
    path_6.cubicTo(
        size.width * 0.9452422,
        size.height * 0.05101242,
        size.width * 0.9487174,
        size.height * 0.05457707,
        size.width * 0.9487174,
        size.height * 0.05897420);
    path_6.lineTo(size.width * 0.9487174, size.height * 0.3283376);
    path_6.cubicTo(
        size.width * 0.9487174,
        size.height * 0.3327357,
        size.width * 0.9452422,
        size.height * 0.3362994,
        size.width * 0.9409534,
        size.height * 0.3362994);
    path_6.lineTo(size.width * 0.9409534, size.height * 0.3362994);
    path_6.cubicTo(
        size.width * 0.9366646,
        size.height * 0.3362994,
        size.width * 0.9331894,
        size.height * 0.3327357,
        size.width * 0.9331894,
        size.height * 0.3283376);
    path_6.lineTo(size.width * 0.9331894, size.height * 0.05897420);
    path_6.cubicTo(
        size.width * 0.9331894,
        size.height * 0.05457707,
        size.width * 0.9366646,
        size.height * 0.05101242,
        size.width * 0.9409534,
        size.height * 0.05101242);
    path_6.lineTo(size.width * 0.9409534, size.height * 0.05101242);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6705155, size.height * 0.05897420);
    path_7.cubicTo(
        size.width * 0.6705155,
        size.height * 0.05457707,
        size.width * 0.6739938,
        size.height * 0.05101242,
        size.width * 0.6782795,
        size.height * 0.05101242);
    path_7.lineTo(size.width * 0.9409534, size.height * 0.05101242);
    path_7.cubicTo(
        size.width * 0.9452391,
        size.height * 0.05101242,
        size.width * 0.9487174,
        size.height * 0.05457707,
        size.width * 0.9487174,
        size.height * 0.05897420);
    path_7.lineTo(size.width * 0.9487174, size.height * 0.05897420);
    path_7.cubicTo(
        size.width * 0.9487174,
        size.height * 0.06337166,
        size.width * 0.9452391,
        size.height * 0.06693599,
        size.width * 0.9409534,
        size.height * 0.06693599);
    path_7.lineTo(size.width * 0.6782795, size.height * 0.06693599);
    path_7.cubicTo(
        size.width * 0.6739938,
        size.height * 0.06693599,
        size.width * 0.6705155,
        size.height * 0.06337166,
        size.width * 0.6705155,
        size.height * 0.05897420);
    path_7.lineTo(size.width * 0.6705155, size.height * 0.05897420);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = color.withValues(alpha: 1.0);
    canvas.drawPath(path_7, paint7Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
