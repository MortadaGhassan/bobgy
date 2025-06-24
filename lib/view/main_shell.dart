import 'dart:math';
import 'package:algad_almushriq/providers/main_shell_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainShell extends ConsumerWidget {
  final Widget child;
  MainShell({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainShellIndicator = ref.watch(mainShellCounterProvider);
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
                context.go('/home');
                break;
              case 1:
                context.go('/transactions');
                break;
              case 2:
                context.go('/profile');
                break;
              case 3:
                context.go('/admin');
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
              icon: Icon(Icons.home, size: 32),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_rounded, size: 32),
              label: 'transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp, size: 32),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Transform.rotate(
                angle: pi / 2,
                child: Icon(Icons.build, size: 28),
              ),
              label: 'admin',
            ),
          ],
        ),
      ),
    );
  }
}
