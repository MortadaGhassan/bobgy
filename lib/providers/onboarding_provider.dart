import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_provider.g.dart';

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  @override
  bool build() {
    _loadingOnboardingStatus();
    return false;
  }

  Future<void> _loadingOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool('onboardingCompleted') ?? false;
  }

  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingCompleted', true);
    state = true;
  }
}
