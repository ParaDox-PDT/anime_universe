part of 'splash_page_part.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Stack(children: [SplashBackground(), SplashContent()]));
}
