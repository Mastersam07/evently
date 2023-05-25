import 'package:evently/evently.dart';

@immutable
class AvatarThemeData {
  const AvatarThemeData({
    this.shape = BoxShape.circle,
    this.radius,
    this.color,
    this.size,
  });

  final Color? color;
  final double? size;
  final double? radius;
  final BoxShape shape;

  static const double defaultSize = 48;
}
