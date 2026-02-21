import 'package:anime_universe/src/config/router/router_part.dart';
import 'package:anime_universe/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    title: 'Anime Universe',
    debugShowCheckedModeBanner: false,
    theme: AppTheme.light(),
    darkTheme: AppTheme.dark(),
    themeMode: ThemeMode.dark,
    routerConfig: AppRouter.router,
  );
}
