import 'package:bookly_app/features/splash/presentation/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SlidingTextAnimated extends StatelessWidget {
  const SlidingTextAnimated({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: textWidget(
              txt: "Read Free Books",
              color: const Color.fromARGB(255, 199, 113, 1),
              fontWeight: FontWeight.bold,
              fontsize: 12),
        );
      }
    );
  }
}