import 'package:flutter/widgets.dart';

import '../styles/typography.dart';

/// Create a [EventlyThemeData] that's used to configure a [EventlyTheme].
@immutable
class EventlyThemeData {
  factory EventlyThemeData({
    Color? primaryColor,
    Typography? typography,
  }) {
    return EventlyThemeData.raw(
      primaryColor: primaryColor ?? const Color(0xFF5669FF),
      typography: typography ?? const Typography(),
    );
  }

  factory EventlyThemeData.light() => EventlyThemeData();

  /// A default dark theme.
  factory EventlyThemeData.dark() => EventlyThemeData();

  const EventlyThemeData.raw(
      {required this.primaryColor, required this.typography});

  final Color primaryColor;
  final Typography typography;
}
