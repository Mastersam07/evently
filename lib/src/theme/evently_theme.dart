import 'package:evently/evently.dart';

/// Applies a theme to descendant widgets.
///
/// A theme describes the colors and typographic choices of an application.
///
/// Descendant widgets obtain the current theme's [EventlyThemeData] object using
/// [EventlyTheme.of]. When a widget uses [EventlyTheme.of], it is automatically rebuilt if
/// the theme later changes, so that the changes can be applied.
///
/// See also:
///
///  * [EventlyTheme], which describes the actual configuration of a theme.
///  * [EventApp], which includes an [AnimatedTheme] widget configured via
///    the [EventApp.theme] argument.
class EventlyTheme extends InheritedWidget {
  /// Applies the given theme [data] to [child].
  ///
  /// The [data] and [child] arguments must not be null.
  ///
  const EventlyTheme({
    required super.child,
    required this.data,
    super.key,
  });

  /// The theme data for evently.
  final EventlyThemeData data;

  static EventlyTheme? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EventlyTheme>();
  }

  @override
  bool updateShouldNotify(EventlyTheme oldWidget) {
    return true;
  }
}
