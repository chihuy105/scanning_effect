import 'package:flutter/material.dart';

// The [ScannerAnimation] for drawing scanner animation that moving down.
// This is controlled by the animation value
class ScannerAnimation extends AnimatedWidget {
  const ScannerAnimation({
    super.key,
    required Animation<double> animation,
    this.scanningColor = Colors.blue,
    this.scanningHeightOffset = 0.4,
  }) : super(
          listenable: animation,
        );

  final Color? scanningColor;
  final double scanningHeightOffset;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final scanningGradientHeight = constrains.maxHeight * scanningHeightOffset;
        final animation = listenable as Animation<double>;
        final value = animation.value;
        final scorePosition = (value * constrains.maxHeight * 2) - (constrains.maxHeight);

        final color = scanningColor ?? Colors.blue;

        return Stack(
          children: [
            Container(
              height: scanningGradientHeight,
              transform: Matrix4.translationValues(0, scorePosition, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [
                    0.0,
                    0.2,
                    0.9,
                    0.95,
                    1,
                  ],
                  colors: [
                    color.withOpacity(0.05),
                    color.withOpacity(0.1),
                    color.withOpacity(0.4),
                    color,
                    color,
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
