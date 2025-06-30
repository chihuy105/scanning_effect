import 'package:flutter/material.dart';

/// The [ScannerBorderPainter] for drawing a border around the scanning effect
/// You can replace this with any SVG or Widget you want
class ScannerBorderPainter extends CustomPainter {
  ScannerBorderPainter({
    required this.color,
    this.borderLineStrokeWidth = 4.0,
  });

  final Color color;
  final double borderLineStrokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final cornerSideLength = size.width * 0.2;
    final inset = size.width * 0.05;

    final path = Path()
      // Top-left
      ..addRect(
          Rect.fromLTWH(inset, inset, cornerSideLength, borderLineStrokeWidth))
      ..addRect(
          Rect.fromLTWH(inset, inset, borderLineStrokeWidth, cornerSideLength))
      // Top-right
      ..addRect(Rect.fromLTWH(size.width - cornerSideLength - inset, inset,
          cornerSideLength, borderLineStrokeWidth))
      ..addRect(Rect.fromLTWH(size.width - inset - borderLineStrokeWidth, inset,
          borderLineStrokeWidth, cornerSideLength))
      // Bottom-left
      ..addRect(Rect.fromLTWH(
          inset,
          size.height - inset - borderLineStrokeWidth,
          cornerSideLength,
          borderLineStrokeWidth))
      ..addRect(Rect.fromLTWH(inset, size.height - cornerSideLength - inset,
          borderLineStrokeWidth, cornerSideLength))
      // Bottom-right
      ..addRect(Rect.fromLTWH(
          size.width - cornerSideLength - inset,
          size.height - inset - borderLineStrokeWidth,
          cornerSideLength,
          borderLineStrokeWidth))
      ..addRect(Rect.fromLTWH(
          size.width - inset - borderLineStrokeWidth,
          size.height - cornerSideLength - inset,
          borderLineStrokeWidth,
          cornerSideLength));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ScannerBorderPainter oldDelegate) =>
      color != oldDelegate.color ||
      borderLineStrokeWidth != oldDelegate.borderLineStrokeWidth;

  @override
  bool shouldRebuildSemantics(ScannerBorderPainter oldDelegate) => false;
}
