import 'package:anime_universe/src/features/on_boarding/presentation/pages/on_boarding_page_part.dart';
import 'package:flutter/material.dart';

mixin OnBoardingMixin on State<OnBoardingPage> {
  final pageController = PageController();
  final ValueNotifier<int> pageViewActiveIndex = ValueNotifier(0);

  Future<void> onPageChanged()async{
    if(pageViewActiveIndex.value!=2){
      pageViewActiveIndex.value+=1;
      await pageController.animateToPage(
        pageViewActiveIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
    }
  }


  @override
  void dispose() {
    pageController.dispose();
    pageViewActiveIndex.dispose();
    super.dispose();
  }
}
