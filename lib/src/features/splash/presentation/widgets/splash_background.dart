part of 'splash_widgets_part.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Assets.images.splashPageBackground.image(
        width: context.kWidth,
        height: context.kHeight,
        fit: BoxFit.fill,
      ),
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: SizedBox(
          width: context.kWidth,
          height: context.kHeight,
          child: ColoredBox(color: AppColors.splashForegroundColor),
        ),
      ),
    ],
  );
}
