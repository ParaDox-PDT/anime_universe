part of 'on_boarding_page_part.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        Expanded(
          child: PageView(
            children: const [
              OnBoardingFirstPage(),
              OnBoardingSecondPage(),
              OnBoardingThirdPage(),
            ],
          ),
        ),
        40.h.g,
        Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            top: false,
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
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text('Get Started', style: context.f18Bold()),
                      8.g,
                      Assets.icons.arrowNextBold.svg(),
                    ],
                  ),
                ).padding(padding: AppUtils.kPaddingHor36Ver16),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
