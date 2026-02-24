part of 'on_boarding_widgets_part.dart';

class OnBoardingThirdPage extends StatelessWidget {
  const OnBoardingThirdPage({super.key});

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Stack(
        children: [
          Assets.images.onBoardingBackgroundThird.image(
            fit: BoxFit.cover,
            width: context.kWidth,
            height: context.kHeight,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.newWithOpacity(0.4),
                  Colors.black.newWithOpacity(0.5),
                  Colors.black.newWithOpacity(0.6),
                  Colors.black.newWithOpacity(0.7),
                  Colors.black.newWithOpacity(0.8),
                  Colors.black.newWithOpacity(0.9),
                  Colors.black,
                ],
              ),
            ),
            child: SizedBox(
              width: context.kWidth,
              height: context.kHeight,
            ),
          ),
        ],
      ),
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
                color: Colors.black.newWithOpacity(0.8),
                borderRadius: AppUtils.kBorderRadius16,
                border: Border.all(color: Colors.white.newWithOpacity(0.1)),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 15,
                    color: Color(0x4D895BF5), // 30% opacity
                  ),
                ],
              ),
              child: Assets.icons.calendar.svg().padding(padding: AppUtils.kPaddingAll18),
            ),
            16.g,
            Text(
              'Weekly airing\nschedule',
              style: context.f36Bold(),
              textAlign: TextAlign.center,
            ),
            16.g,
            Text(
              'Stay updated with the latest releases and never miss an episode.',
              style: context.f18Regular(colorOverride: const Color(0xFF94A3B8)),
              textAlign: TextAlign.center,
            ).padding(padding: AppUtils.kPaddingHorizontal40),
          ],
        ),
      ),
    ],
  );
}
