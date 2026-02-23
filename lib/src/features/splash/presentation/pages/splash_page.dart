import 'package:anime_universe/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Stack(
          children: [
            Assets.images.splashPageBackground.image(

                fit: BoxFit.fill
            )
          ],
        )
      );
}
