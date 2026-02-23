part of 'splash_widgets_part.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) => Align(
    child: SafeArea(
      child: Column(
        children: [
          AppUtils.kSpacer,
          Assets.images.splashIcon.image(),
          Text('ANIVERSE', style: context.f48Bold(height: 40 / 49)),
          16.g,
          Text(
            'Your Portal to Every World'.toUpperCase(),
            style: context
                .f14SemiBold(colorOverride: AppColors.primary)
                .copyWith(letterSpacing: 5.6),
            textAlign: TextAlign.center,
          ),
          AppUtils.kSpacer,
          BlocConsumer<SplashCubit, SplashState>(
            buildWhen: (p, c) => p.progress != c.progress,
            listenWhen: (p, c) => p.progress != c.progress,
            listener: (context, state) {
              if (state.progress >= 1.0) {
                context.goNamed(Routes.main);
              }
            },
            builder: (context, state) =>
                SplashProgress(label: 'INITIALIZING...', percent: state.progress),
          ),
          12.g,
          Text(
            'DEVELOPED BY ParaDoxical Team',
            style: context.f14Medium(
              colorOverride: Colors.white.newWithOpacity(0.2),
            ),
          ),
        ],
      ).padding(padding: AppUtils.kPaddingHor40Ver24),
    ),
  );
}
