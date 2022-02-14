import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 16.0;
  static final Color _textColorStrong = _hexToColor('000000');
  static final Color _textColorDefault = _hexToColor('666666');
  static final Color baseColor = Colors.deepOrange.withOpacity(0.7);
  static final Color baseTextColor = Colors.black87.withOpacity(0.7);
  static final List<Color> colors = [
    const Color(0xff71b4fb),
    const Color(0xfffa8c73),
    const Color(0xff8873f4),
    const Color(0xff02c39a),
    const Color(0xff70a288),
  ];
  static const String _fontNameDefault = 'Muli';
  static const navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );
  static final headerLarge = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
  );
  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
