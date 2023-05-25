import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

class Typography with Diagnosticable {
  final TextStyle? body;

  const Typography({
    this.body,
  });

  factory Typography.fromBrightness({
    Brightness? brightness,
    Color? color,
  }) {
    assert(
      brightness != null || color != null,
      'Either brightness or color cannot be null',
    );
    color ??= brightness == Brightness.light
        ? const Color(0xFF000000)
        : const Color(0xFFFFFFFF);
    return Typography(
      body: TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
