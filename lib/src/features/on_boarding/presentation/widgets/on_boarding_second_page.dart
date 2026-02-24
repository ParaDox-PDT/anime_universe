part of 'on_boarding_widgets_part.dart';

class OnBoardingSecondPage extends StatelessWidget {
  const OnBoardingSecondPage({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
    bottom: false,
    child: Column(
      children: [
        10.g,
        Stack(
          alignment: AlignmentGeometry.bottomRight,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFF151022),
                image: DecorationImage(
                  image: AssetImage(Assets.images.onBoardingBackgroundSecond.path),
                  fit: BoxFit.cover,
                  opacity: 0.7,
                ),
                borderRadius: AppUtils.kBorderRadius32,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 25),
                    blurRadius: 50,
                    spreadRadius: -12,
                    color: Color(0x40000000), // 25% opacity
                  ),
                  BoxShadow(
                    spreadRadius: 1,
                    color: Color(0x1AFFFFFF), // 10% opacity
                  ),
                ],
              ),
              child: SizedBox(
                height: 480.h,
                width: 320.w,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Align(
                      alignment: AlignmentGeometry.topEnd,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black.newWithOpacity(0.4),
                          borderRadius: AppUtils.kMaxBorderRadius,
                          border: .all(color: Colors.white.newWithOpacity(0.1)),
                        ),
                        child: Row(
                          mainAxisSize: .min,
                          children: [
                            Assets.icons.doneUnderline.svg(),
                            8.g,
                            Text('Cached', style: context.f12Medium()),
                          ],
                        ).padding(padding: AppUtils.kPaddingHor12Ver4),
                      ),
                    ),
                    AppUtils.kSpacer,
                    Row(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.primary.newWithOpacity(0.9),
                            borderRadius: AppUtils.kMaxBorderRadius,
                          ),
                          child: Text(
                            'SERIES',
                            style: context.f10Bold(),
                          ).padding(padding: AppUtils.kPaddingHor8Ver2),
                        ),
                        8.g,
                        Assets.icons.yellowStart.svg(),
                        4.g,
                        Text('9.2', style: context.f12Bold()),
                      ],
                    ),
                    8.g,
                    Text('Cyber Edge', style: context.f20Bold()),
                    4.g,
                    Text(
                      'In a dystopian future, a street kid tries to survive in a technology-obsessed city.',
                      style: context.f12Regular(
                        colorOverride: Colors.white.newWithOpacity(0.6),
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ).padding(padding: AppUtils.kPaddingAll24),
              ),
            ).padding(padding: AppUtils.kPaddingHor30Ver24),
            Assets.icons.greenCircleDone.svg(width: 80.sp, height: 80.sp),
          ],
        ),
        Text('Track favorites\noffline', style: context.f32Bold(), textAlign: .center),
        Text(
          'Your library is always with you. Access your saved anime anywhere, anytime.',
          style: context.f16Regular(
            colorOverride: const Color(0xFFF2F5FF).newWithOpacity(0.7),
            letterSpacing: 0
          ),
          textAlign: .center,
        ).padding(padding: AppUtils.kPaddingHorizontal40),
      ],
    ),
  );
}
