import 'package:evently/evently.dart';
import 'package:evently/src/components/avatar/avatar_theme_data.dart';

/// Create a [EventlyThemeData] that's used to configure a [EventlyTheme].
@immutable
class EventlyThemeData {
  const EventlyThemeData({
    this.avatarThemeData = const AvatarThemeData(),
    this.typography = const Typography(),
    this.primaryColor,
  });

  final Typography typography;
  final AvatarThemeData avatarThemeData;
  final EventColors? primaryColor;
}
