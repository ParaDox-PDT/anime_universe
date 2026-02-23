part of 'on_boarding_page_part.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
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
                    BoxShadow(
                      color: Colors.black.newWithOpacity(0.3),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: Assets.icons.cinematic.svg().padding(
                  padding: AppUtils.kPaddingHor12Ver14,
                ),
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
              192.h.g,
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: AppUtils.kMaxBorderRadius,
                      ),
                      child: SizedBox(height: 8.h, width: 32.w),
                    ),
                    8.g,
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color(0xFF334155),
                        borderRadius: AppUtils.kMaxBorderRadius,
                      ),
                      child: SizedBox(height: 8.sp, width: 8.sp),
                    ),
                    8.g,
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color(0xFF334155),
                        borderRadius: AppUtils.kMaxBorderRadius,
                      ),
                      child: SizedBox(height: 8.sp, width: 8.sp),
                    ),
                  ],
                ),
                16.h.g,
                ElevatedButton(onPressed: (){}, child: const Text('Get Started')).padding(padding: AppUtils.kPaddingHor36Ver16)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
