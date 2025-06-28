import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../l10n/l10n.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  Locale? build() {
    getLocale();
    return null;
  }

  Future<void> setLocale(Locale locale) async {
    if (!L10n.all.contains(locale)) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', locale.languageCode);
    state = locale;
  }

  Future<void> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final _localCode = await prefs.getString("selectedLanguage");
    state = Locale(_localCode!);
  }

  void clearLocale() {
    state = null;
  }
}
