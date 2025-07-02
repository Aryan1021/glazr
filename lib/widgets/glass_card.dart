import 'dart:ui';
import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final double blurSigma;
  final Color tintColor;

  const GlassCard({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.blurSigma = 15,
    this.tintColor = const Color.fromRGBO(255, 255, 255, 0.15),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
          child: Container(
            decoration: BoxDecoration(
              color: tintColor,
              borderRadius: borderRadius,
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ),
      ),
    );
  }
}