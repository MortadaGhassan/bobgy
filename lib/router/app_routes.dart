import 'package:algad_almushriq/providers/onboarding_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/view/donation_screen.dart';
import 'package:algad_almushriq/view/home_screen.dart';
import 'package:algad_almushriq/view/login.dart';
import 'package:algad_almushriq/view/main_shell.dart';
import 'package:algad_almushriq/view/news_screen.dart';
import 'package:algad_almushriq/view/onboarding_screen.dart';
import 'package:algad_almushriq/view/register.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRouter createRouter(WidgetRef ref) {
    final isOnboardingCompleted = ref.watch(onboardingNotifierProvider);
    return GoRouter(
      initialLocation:
          isOnboardingCompleted
              ? RouteNames.logInScreen
              : RouteNames.onboardingScreen,
      routes: [
        ShellRoute(
          builder: ((context, state, child) => MainShell(child: child)),
          routes: [
            GoRoute(
              name: RouteNames.homeScreen,
              path: '/homeScreen',
              builder: ((context, state) => HomeScreen()),
            ),
            GoRoute(
              name: RouteNames.donationScreen,
              path: '/donationScreen',
              builder: ((context, state) => DonationScreen()),
            ),
            GoRoute(
              name: RouteNames.newsScreen,
              path: '/newsScreen',
              builder: ((context, state) => NewsScreen()),
            ),
            GoRoute(
              name: RouteNames.profileScreen,
              path: '/profileScreen',
              builder: ((context, state) => HomeScreen()),
            ),
            GoRoute(
              name: RouteNames.sponsorshipScreen,
              path: '/sponsorshipScreen',
              builder: ((context, state) => HomeScreen()),
            ),
          ],
        ),
        GoRoute(
          name: RouteNames.onboardingScreen,
          path: '/onboardingScreen',
          builder: ((context, state) => OnboardingScreen()),
        ),
        GoRoute(
          name: RouteNames.logInScreen,
          path: '/login',
          builder: ((context, state) => LoginScreen()),
        ),
        GoRoute(
          name: RouteNames.authScreen,
          path: '/authScreen',
          builder: ((context, state) => AuthScreen()),
        ),
      ],
    );
  }
}
