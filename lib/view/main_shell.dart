// import 'package:algad_almushriq/providers/main_shell_provider.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../router/route_names.dart';

class MainShell extends ConsumerWidget {
  final Widget child;
  const MainShell({required this.child, super.key});

  int _getCurrentIndex(String location) {
    if (location.startsWith(RouteNames.sponsorshipScreen)) return 1;
    if (location.startsWith(RouteNames.donationScreen)) return 2;
    if (location.startsWith(RouteNames.newsScreen)) return 3;
    if (location.startsWith(RouteNames.profileScreen)) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final mainShellIndicator = ref.watch(mainShellCounterProvider);
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _getCurrentIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
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
            selectedFontSize: SizeConfig.font11,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: context.colorScheme.primary,
            elevation: 15,
            backgroundColor: Theme.of(context).colorScheme.surface,
            items: [
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedHome03,
                  color:
                      currentIndex == 0
                          ? context.colorScheme.primary
                          : context.colorScheme.shadow,
                ),
                label: 'الرئيسة',
              ),
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedChart01,
                  color:
                      currentIndex == 1
                          ? context.colorScheme.primary
                          : context.colorScheme.shadow,
                ),
                label: 'سجل الكفالة',
              ),
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedStarAward01,
                  color:
                      currentIndex == 2
                          ? context.colorScheme.primary
                          : context.colorScheme.shadow,
                ),
                label: 'الكفالة',
              ),
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedComputer,
                  color:
                      currentIndex == 3
                          ? context.colorScheme.primary
                          : context.colorScheme.shadow,
                ),
                label: 'الاخبار',
              ),
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedUser,
                  color:
                      currentIndex == 4
                          ? context.colorScheme.primary
                          : context.colorScheme.shadow,
                ),
                label: 'حسابي',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
