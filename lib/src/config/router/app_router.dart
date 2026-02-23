part of 'router_part.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    debugLogDiagnostics: kDebugMode,
    observers: [AppRouteObserver()],
    routes: [
      GoRoute(
        path: Routes.splash,
        name: 'splash',
        pageBuilder: (context, state) => const MaterialPage(child: SplashPage()),
      ),
      GoRoute(
        path: Routes.main,
        name: 'main',
        pageBuilder: (_, state) => CustomTransitionPage(
          transitionDuration: const Duration(milliseconds: 1200),
          /// Page
          child: const MainPage(),

          /// Fade transition
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          ),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: _RouteErrorPage(
        message: state.error?.toString() ?? 'Unknown route error',
      ),
    ),
  );
}

/// Route observer for logging
class AppRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    AppLogger.d('PUSH: ${route.settings.name ?? route.settings}', tag: 'ROUTER');
    super.didPush(route, previousRoute);
  }
}

class _RouteErrorPage extends StatelessWidget {
  const _RouteErrorPage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Route error')),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(message, textAlign: TextAlign.center),
      ),
    ),
  );
}

class FadePageRoute<T> extends PageRouteBuilder<T> {
  FadePageRoute({required this.builder})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => builder(context),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      );
  final WidgetBuilder builder;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
