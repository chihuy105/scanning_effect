// Thank you to the author of the original post that this widget was build base on it.
// https://medium.com/@webianks/scanning-animation-in-flutter-99fb26aabbb7

import 'package:flutter/material.dart';
import 'package:scanning_effect/scanner_animation.dart';
import 'package:scanning_effect/scanner_border_painter.dart';

/// A widget that applies a scanning animation effect over its child.
///
/// The [ScanningEffect] widget creates a customizable scanning animation
/// with an optional border overlay. It uses an [AnimationController] to
/// control the scanning motion, which continuously repeats with a delay.
///
/// The scanning effect is drawn using [ScannerAnimation], while the border
/// is painted by [ScannerBorderPainter].
///
/// Example usage:
/// ```dart
/// ScanningEffect(
///   child: Image.asset('assets/sample.png'),
///   scanningColor: Colors.green,
///   borderLineColor: Colors.red,
/// )
/// ```
///
/// Creates a [ScanningEffect] widget.
///
/// [child] is the widget over which the scanning animation is displayed.
///
/// [scanningColor] sets the color of the animated scanning line.
/// [borderLineColor] defines the color of the optional border.
/// [enableBorder] controls whether the border is displayed.
/// [scanningHeightOffset] determines the scanning line height as a
/// percentage of the widget's total height.
/// [delay] specifies the time between animation cycles.
/// [duration] sets the total duration of a single animation cycle.
/// [scanningLinePadding] adjusts the padding around the scanning effect.
/// [reverse] controls whether the animation should be reversed.
/// [borderLineStrokeWidth] defines the width of the border line.
///
class ScanningEffect extends StatefulWidget {
  const ScanningEffect({
    super.key,
    required this.child,
    this.scanningColor = Colors.blue,
    this.borderLineColor = Colors.blue,
    this.enableBorder = true,
    this.scanningHeightOffset = 0.4,
    this.delay = const Duration(milliseconds: 700),
    this.duration = const Duration(milliseconds: 2800),
    this.scanningLinePadding =
        const EdgeInsets.symmetric(horizontal: 32, vertical: 36),
    this.reverse = false,
    this.borderLineStrokeWidth = 4.0,
  });

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  /// The color of the scanning animation
  final Color scanningColor;

  /// The color of the border line
  final Color borderLineColor;

  /// The percent of scanning animation with the view height
  final double scanningHeightOffset;

  /// The delay between each animation
  final Duration delay;

  /// The length of time this animation should last.
  final Duration duration;

  /// The padding of the scanning animation
  final EdgeInsetsGeometry scanningLinePadding;

  /// Whether to display the border line
  final bool enableBorder;

  /// Whether to reverse the animation
  final bool reverse;

  /// The width of the border line
  final double borderLineStrokeWidth;

  @override
  State<ScanningEffect> createState() => _ScanningEffectState();
}

class _ScanningEffectState extends State<ScanningEffect>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animationController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(
            widget.delay,
            () {
              if (mounted) {
                _animationController
                  ..reset()
                  ..forward(from: 0);
              }
            },
          );
        }
      })
      ..forward(from: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        if (widget.enableBorder)
          CustomPaint(
            painter: ScannerBorderPainter(
              color: widget.borderLineColor,
              borderLineStrokeWidth: widget.borderLineStrokeWidth,
            ),
          ),
        Padding(
          padding: widget.scanningLinePadding,
          child: ClipRect(
            child: ScannerAnimation(
              animation: _animationController,
              scanningColor: widget.scanningColor,
              scanningHeightOffset: widget.scanningHeightOffset,
              reversed: widget.reverse,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
