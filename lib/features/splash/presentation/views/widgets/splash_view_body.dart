import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.appLogo,
        ),
        const SizedBox(
          height: 10,
        ),
        textWidget(
            txt: "Read Free Books",
            color: const Color.fromARGB(255, 199, 113, 1),
            fontWeight: FontWeight.bold,
            fontsize: 12)
      ],
    );
  }
}
