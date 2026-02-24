part of 'on_boarding_widgets_part.dart';

class OnBoardingFirstPage extends StatelessWidget {
  const OnBoardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Assets.images.onBoardingBackgroundFirst.image(),
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
        child: SizedBox(
          width: context.kWidth,
          height: context.kHeight,
          child: ColoredBox(color: AppColors.splashForegroundColor),
        ),
      ),
      Align(
        child: Column(
          children: [
            AppUtils.kSpacer,
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.primary.newWithOpacity(0.2),
                borderRadius: AppUtils.kBorderRadius16,
                border: Border.all(color: AppColors.primary.newWithOpacity(0.3)),
                boxShadow: [
                  BoxShadow(color: Colors.black.newWithOpacity(0.3), blurRadius: 16),
                ],
              ),
              child: Assets.icons.cinematic
                  .svg(width: 24.sp, height: 24.sp)
                  .padding(padding: AppUtils.kPaddingHor14Ver16),
            ),
            16.g,
            Text(
              'Discover anime instantly',
              style: context.f36Bold(),
              textAlign: TextAlign.center,
            ),
            16.g,
            Text(
              'Browse thousands of titles,characters, and reviews powered by Jikan.',
              style: context.f18Regular(colorOverride: const Color(0xFF94A3B8)),
              textAlign: TextAlign.center,
            ).padding(padding: AppUtils.kPaddingHorizontal40),
          ],
        ),
      ),
    ],
  );
}
