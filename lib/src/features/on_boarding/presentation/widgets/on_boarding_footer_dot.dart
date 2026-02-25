part of 'on_boarding_widgets_part.dart';

class OnBoardingFooterDot extends StatelessWidget {
  const OnBoardingFooterDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeOutCubic,
    height: 8.sp,
    width: isActive ? 32.w : 8.sp,
    decoration: BoxDecoration(
      color: isActive ? AppColors.primary : const Color(0xFF334155),
      borderRadius: AppUtils.kMaxBorderRadius,
    ),
  );
}
