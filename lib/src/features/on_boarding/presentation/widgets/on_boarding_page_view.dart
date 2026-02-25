part of 'on_boarding_widgets_part.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) => Expanded(
    child: PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        OnBoardingFirstPage(),
        OnBoardingSecondPage(),
        OnBoardingThirdPage(),
      ],
    ),
  );
}
