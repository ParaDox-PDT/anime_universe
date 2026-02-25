part of 'on_boarding_page_part.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> with OnBoardingMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        OnBoardingPageView(pageController: pageController),
        40.h.g,
        OnBoardingFooter(
          pageViewActiveIndex: pageViewActiveIndex,
          onPageChanged: onPageChanged,
        ),
      ],
    ),
  );
}
