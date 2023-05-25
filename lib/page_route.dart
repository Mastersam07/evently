import 'package:flutter/widgets.dart';

class EventRoute<T> extends PageRoute<T> {
  EventRoute({super.settings, required this.builder}) : super();

  final WidgetBuilder builder;

  @override
  bool get opaque => true;

  @override
  bool get barrierDismissible => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => false;

  @override
  Color? get barrierColor => const Color(0xFFFFFFFF);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: Curves.decelerate,
      ),
      child: child,
    );
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return builder(context);
  }

  @override
  String? get barrierLabel => null;
}
