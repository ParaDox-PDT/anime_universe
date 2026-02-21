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
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: _RouteErrorPage(message: state.error?.toString() ?? 'Unknown route error'),
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
