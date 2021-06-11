import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),
    const Locale('de'),
    const Locale('your language code'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'ar':
        return 'AR';
      case 'de':
        return 'DE';
      case 'en':
        return 'EN';
      case 'your language code':
        return 'your language code';
      default:
        return 'EN';
    }
  }
}
