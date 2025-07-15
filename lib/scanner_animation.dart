import 'package:flutter/material.dart';

/// The [ScannerAnimation] for drawing scanner animation that moving down.
/// This is controlled by the animation value
class ScannerAnimation extends AnimatedWidget {
  const ScannerAnimation({
    super.key,
    required Animation<double> animation,
    this.scanningColor = Colors.blue,
    this.scanningHeightOffset = 0.4,
    this.isGoingUpDown = false,
  }) : super(
          listenable: animation,
        );

  final Color? scanningColor;
  final double scanningHeightOffset;
  final bool isGoingUpDown;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final scanningGradientHeight =
            constrains.maxHeight * scanningHeightOffset;
        final animation = listenable as Animation<double>;
        final value = isGoingUpDown ? 1.0 - animation.value : animation.value;
        final scorePosition =
            (value * constrains.maxHeight * 2) - (constrains.maxHeight);

        final color = scanningColor ?? Colors.blue;

        final isAnimationGoingDown = checkGoingUpDown(animation: animation);
        var begin =
            isAnimationGoingDown ? Alignment.topCenter : Alignment.bottomCenter;
        var end =
            isAnimationGoingDown ? Alignment.bottomCenter : Alignment.topCenter;
        var colors = isAnimationGoingDown
            ? [
                color.withValues(alpha: 0.05),
                color.withValues(alpha: 0.1),
                color.withValues(alpha: 0.4),
                color,
                color,
              ]
            : [
                color.withValues(alpha: 0.02),
                color.withValues(alpha: 0.1),
                color.withValues(alpha: 0.4),
                color.withValues(alpha: 0.4),
                color,
              ];
        return Stack(
          children: [
            Container(
              height: scanningGradientHeight,
              transform: Matrix4.translationValues(0, scorePosition, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: begin,
                  end: end,
                  stops: const [
                    0.0,
                    0.2,
                    0.9,
                    0.95,
                    1,
                  ],
                  colors: colors,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  bool checkGoingUpDown({
    Animation<double> animation = const AlwaysStoppedAnimation(0.0),
  }) =>
      isGoingUpDown && animation.status != AnimationStatus.reverse;
}
