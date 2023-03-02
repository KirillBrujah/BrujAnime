import 'dart:math' as math;

import 'package:brujanime/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class ProgressLogo extends StatelessWidget {
  const ProgressLogo({Key? key, this.progress = 0.0}) : super(key: key);

  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _ProgressArc(
            progress: progress,
          ),
          Center(
            child: SizedBox(
              height: 170,
              width: 170,
              child: Assets.svg.yinYang.svg(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProgressArc extends StatefulWidget {
  const _ProgressArc({
    Key? key,
    required this.progress,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);
  final double progress;
  final Duration duration;

  @override
  State<_ProgressArc> createState() => _ProgressArcState();
}

class _ProgressArcState extends State<_ProgressArc>
    with SingleTickerProviderStateMixin {
  late Tween<double> _progressTween;
  late Animation<double> _progress;
  late AnimationController _progressController;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _progressTween = Tween<double>(begin: 0, end: widget.progress);
    _progress = _progressController
        .drive(CurveTween(curve: standardEasing))
        .drive(_progressTween)
      ..addListener(() => setState(() {}));
    _animateTo(widget.progress);
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _ProgressArc oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.progress != oldWidget.progress) {
      _animateTo(widget.progress);
    }
  }

  void _animateTo(double progress) {
    if (progress > 1) return;
    final double currentProgress = _progress.value;
    _progressTween
      ..begin = currentProgress
      ..end = progress;
    _progressController
      ..value = 0.0
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ProgressArcPainter(
        progress: _progress.value,
        color: Theme.of(context).colorScheme.primary,
        thickness: 20,
      ),
    );
  }
}

class _ProgressArcPainter extends CustomPainter {
  final double progress;
  final Color color;
  final double thickness;

  _ProgressArcPainter({
    required this.progress,
    required this.color,
    this.thickness = 10,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()
          ..moveTo(size.width / 2, size.height / 2)
          ..lineTo(size.width / 2, 0)
          ..arcTo(
            Rect.fromCenter(
              center: Offset(size.height / 2, size.width / 2),
              width: size.width,
              height: size.height,
            ),
            math.pi * 1.5,
            (2 * math.pi) * (progress < 0.9999999 ? progress : 0.9999999),
            false,
          ),
        Path()
          ..addOval(
            Rect.fromCenter(
              center: Offset(size.height / 2, size.width / 2),
              width: size.width - thickness,
              height: size.height - thickness,
            ),
          )
          ..close(),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(_ProgressArcPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
