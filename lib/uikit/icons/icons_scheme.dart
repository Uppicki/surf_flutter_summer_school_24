

import 'package:flutter/material.dart';

class IconsScheme extends ThemeExtension<IconsScheme> {
  final String backIcon;
  final String logoIcon;
  final String settingsIcon;
  final String themeIcon;
  final String uploadIcon;
  final String smileIcon;

  IconsScheme.light()
      : backIcon = 'assets/light/png/back.png',
        logoIcon = 'assets/light/png/logo.png',
        settingsIcon = 'assets/light/png/settings.png',
        themeIcon = 'assets/light/png/theme.png',
        uploadIcon = 'assets/light/png/upload.png',
        smileIcon = 'assets/png/smile.png';

  IconsScheme.dark()
      : backIcon = 'assets/dark/png/back.png',
        logoIcon = 'assets/dark/png/logo.png',
        settingsIcon = 'assets/dark/png/settings.png',
        themeIcon = 'assets/dark/png/theme.png',
        uploadIcon = 'assets/dark/png/upload.png',
        smileIcon = 'assets/png/smile.png';

  const IconsScheme._(
      {required this.backIcon,
      required this.logoIcon,
      required this.settingsIcon,
      required this.themeIcon,
      required this.uploadIcon,
      required this.smileIcon});

  @override
  ThemeExtension<IconsScheme> copyWith({
    String? backIcon,
    String? logoIcon,
    String? settingsIcon,
    String? themeIcon,
    String? uploadIcon,
    String? smileIcon,
  }) {
    return IconsScheme._(
        backIcon: backIcon ?? this.backIcon,
        logoIcon: logoIcon ?? this.logoIcon,
        settingsIcon: settingsIcon ?? this.settingsIcon,
        themeIcon: themeIcon ?? this.themeIcon,
        uploadIcon: uploadIcon ?? this.uploadIcon,
        smileIcon: smileIcon ?? this.smileIcon);
  }

  @override
  ThemeExtension<IconsScheme> lerp(
      covariant ThemeExtension<IconsScheme>? other, double t) {
    if (other is! IconsScheme) {
      return this;
    }

    return IconsScheme._(
      backIcon: t < 0.5 ? backIcon : other.backIcon,
      logoIcon: t < 0.5 ? logoIcon : other.logoIcon,
      settingsIcon: t < 0.5 ? settingsIcon : other.settingsIcon,
      themeIcon: t < 0.5 ? themeIcon : other.themeIcon,
      uploadIcon: t < 0.5 ? uploadIcon : other.uploadIcon,
      smileIcon: t < 0.5 ? smileIcon : other.smileIcon,
    );
  }

  static IconsScheme of(BuildContext context) =>
      Theme.of(context).extension<IconsScheme>() ?? IconsScheme.light();
}
