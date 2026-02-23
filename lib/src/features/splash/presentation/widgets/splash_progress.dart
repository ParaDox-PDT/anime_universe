part of 'splash_widgets_part.dart';

class SplashProgress extends StatelessWidget {
  const SplashProgress({super.key, required this.label, required this.percent});

  final String label;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final double p = percent.clamp(0, 1);
    final String percentText = '${(p * 100).round()}%';
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('INITIALIZING...', style: context.f12Medium()),
            Text(
              percentText,
              style: context.f12Medium(colorOverride: AppColors.primary),
            ),
          ],
        ),
        12.g,
        LinearProgressIndicator(
          value: p,
          color: AppColors.primary,
          backgroundColor: Colors.white.newWithOpacity(0.05),
          borderRadius: AppUtils.kBorderRadius12,
        ),
      ],
    );
  }
}
