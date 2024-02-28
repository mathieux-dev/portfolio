enum FontFamilies {
  sourceSansPro,
  clanPro,
}

extension FontFamiliesExtension on FontFamilies {
  static const _values = {
    FontFamilies.sourceSansPro: "SourceSansPro",
    FontFamilies.clanPro: "FFClanPro",
  };

  String get value => _values[this]!;
}

extension StringFontFamiliesExtension on String {
  static const _keys = {
    "SourceSansPro": FontFamilies.sourceSansPro,
    "FFClanPro": FontFamilies.clanPro,
  };

  FontFamilies toFontFamily() => _keys[this]!;
}
