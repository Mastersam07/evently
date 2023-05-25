import 'package:evently/evently.dart';

import 'avatar_theme_data.dart';

class EventAvatar extends StatelessWidget {
  const EventAvatar({
    this.avatarImage,
    this.child,
    super.key,
  });

  /// The image to display in the avatar.
  final ImageProvider<Object>? avatarImage;

  /// The widget below this widget in the tree.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = EventlyTheme.of(context)?.data.avatarThemeData;

    final shape = theme?.shape ?? BoxShape.circle;
    return Container(
      alignment: Alignment.center,
      height: theme?.size ?? AvatarThemeData.defaultSize,
      width: theme?.size ?? AvatarThemeData.defaultSize,
      decoration: BoxDecoration(
        color: theme?.color,
        borderRadius: shape == BoxShape.circle
            ? null
            : BorderRadius.circular(theme?.radius ?? 0),
        shape: shape,
        image:
            avatarImage != null ? DecorationImage(image: avatarImage!) : null,
      ),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
