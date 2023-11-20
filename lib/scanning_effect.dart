// Thank you to the author of the original post that this widget was build base on it.
// https://medium.com/@webianks/scanning-animation-in-flutter-99fb26aabbb7

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scanning_effect/scanner_animation.dart';
import 'package:scanning_effect/scanner_border_painter.dart';

/// The [ScanningEffect] is the view where scanner animation
/// and scanning border line display.
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

  @override
  State<ScanningEffect> createState() => _ScanningEffectState();
}

class _ScanningEffectState extends State<ScanningEffect>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  Timer? _timer;
  @override
  void initState() {
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animationController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _timer = Timer(widget.delay, () {
            _animationController
              ..reset()
              ..forward(from: 0);
          });
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
            ),
          ),
        Padding(
          padding: widget.scanningLinePadding,
          child: ClipRect(
            child: ScannerAnimation(
              animation: _animationController,
              scanningColor: widget.scanningColor,
              scanningHeightOffset: widget.scanningHeightOffset,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }
}
