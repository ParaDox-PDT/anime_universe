part of 'on_boarding_widgets_part.dart';

class OnBoardingFooter extends StatelessWidget {
  const OnBoardingFooter({
    super.key,
    required this.pageViewActiveIndex,
    required this.onPageChanged,
  });

  final ValueNotifier<int> pageViewActiveIndex;
  final Future<void> Function() onPageChanged;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.bottomCenter,
    child: SafeArea(
      top: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [_onBoardingFooterDots(), 16.h.g, _onBoardingFooterButton(context)],
      ),
    ),
  );

  Widget _onBoardingFooterDots() => ValueListenableBuilder(
    valueListenable: pageViewActiveIndex,
    builder: (context, activeIndex, child) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (i) => OnBoardingFooterDot(isActive: i == activeIndex),
      ).expand((w) => [w, 8.g]).toList()..removeLast(),
    ),
  );

  Widget _onBoardingFooterButton(BuildContext context) => ElevatedButton(
    onPressed: onPageChanged,
    child: Row(
      mainAxisAlignment: .center,
      children: [
        Text('Get Started', style: context.f18Bold()),
        8.g,
        Assets.icons.arrowNextBold.svg(),
      ],
    ),
  ).padding(padding: AppUtils.kPaddingHor36Ver16);
}
