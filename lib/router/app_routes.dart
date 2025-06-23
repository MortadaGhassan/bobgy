import 'package:algad_almushriq/providers/onboarding_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/view/auth_screen.dart';
import 'package:algad_almushriq/view/onboarding_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRouter createRouter(WidgetRef ref) {
    final isOnboardingCompleted = ref.watch(onboardingNotifierProvider);
    return GoRouter(
      initialLocation:
          isOnboardingCompleted
              ? RouteNames.authScreen
              : RouteNames.onboardingScreen,
      routes: [
        GoRoute(
          name: RouteNames.authScreen,
          path: '/authScreen',
          builder: ((context, state) => AuthScreen()),
          routes: [],
        ),
        GoRoute(
          name: RouteNames.onboardingScreen,
          path: '/onboardingScreen',
          builder: ((context, state) => OnboardingScreen()),
        ),
      ],
    );
  }
}
