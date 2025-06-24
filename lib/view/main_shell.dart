import 'dart:math';
import 'package:algad_almushriq/providers/main_shell_provider.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../router/route_names.dart';

class MainShell extends ConsumerWidget {
  final Widget child;
  MainShell({required this.child});

  int _getCurrentIndex(String location) {
    if (location.startsWith(RouteNames.sponsorshipScreen)) return 1;
    if (location.startsWith(RouteNames.donationScreen)) return 2;
    if (location.startsWith(RouteNames.newsScreen)) return 3;
    if (location.startsWith(RouteNames.profileScreen)) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainShellIndicator = ref.watch(mainShellCounterProvider);
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _getCurrentIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          currentIndex: mainShellIndicator,
          onTap: (index) {
            switch (index) {
              case 0:
                context.goNamed(RouteNames.homeScreen);
                break;
              case 1:
                context.goNamed(RouteNames.sponsorshipScreen);
                break;
              case 2:
                context.goNamed(RouteNames.donationScreen);
                break;
              case 3:
                context.goNamed(RouteNames.newsScreen);
                break;
              case 4:
                context.goNamed(RouteNames.profileScreen);
                break;
            }
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedIconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.surface,
          ),
          selectedIconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          elevation: 15,
          backgroundColor: Theme.of(context).colorScheme.primary,
          items: [
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedHome03,
                color: context.colorScheme.primary,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedChart01,
                color: context.colorScheme.primary,
              ),
              label: 'transactions',
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedStarAward01,
                color: context.colorScheme.primary,
              ),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedComputer,
                color: context.colorScheme.primary,
              ),
              label: 'admin',
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedUser,
                color: context.colorScheme.primary,
              ),
              label: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
