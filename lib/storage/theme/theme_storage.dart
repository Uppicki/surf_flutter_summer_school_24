


import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeStorage {
  final SharedPreferences _preferences;


  ThemeStorage({
    required SharedPreferences preferences,
  }) : _preferences = preferences;


  ThemeMode? getThemeMode() {
    final storedName = _preferences.getString(
      ThemeStorageKeys.mode.key
    );

    if (storedName?.isEmpty ?? true) return null;

    return ThemeMode.values.firstWhereOrNull(
        (themeMode) => themeMode.name == storedName
    );
  }

  Future<void> saveThemeMode({
    required ThemeMode mode
  }) {
    return _preferences.setString(
        ThemeStorageKeys.mode.key,
        mode.name
    );
  }

}

enum ThemeStorageKeys {
  mode('theme_mode');

  final String key;

  const ThemeStorageKeys(this.key);
}