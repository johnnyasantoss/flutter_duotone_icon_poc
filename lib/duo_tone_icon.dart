import 'package:flutter/widgets.dart';

class DuoToneIcon extends Icon {
  final IconData backgroundIcon;

  const DuoToneIcon({
    super.key,
    super.size,
    super.color,
    super.semanticLabel,
    super.textDirection,
    super.shadows,
    required this.backgroundIcon,
    required IconData foregroundIcon,
  }) : super(foregroundIcon);

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);

    final double? iconSize = size ?? iconTheme.size;

    if (icon == null) {
      return Semantics(
        label: semanticLabel,
        child: SizedBox(width: iconSize, height: iconSize),
      );
    }

    return Semantics(
      label: semanticLabel,
      child: ExcludeSemantics(
        child: SizedBox(
          width: iconSize,
          height: iconSize,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  backgroundIcon,
                  size: size,
                  color: color?.withOpacity(.5),
                  shadows: shadows,
                  textDirection: textDirection,
                ),
                Icon(
                  icon,
                  size: size,
                  color: color,
                  shadows: shadows,
                  textDirection: textDirection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
