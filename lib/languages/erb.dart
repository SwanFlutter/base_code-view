// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/common_modes.dart';
import '../src/tools/mode.dart';
import 'language/languages.dart';

/// Syntax highlighting mode for erb.
final erb = Mode(
  refs: {},
  subLanguage: [Languages.xml],
  contains: [
    Mode(
      className: "comment",
      begin: "<%#",
      end: "%>",
      contains: [
        phrasalWordsMode,
        Mode(
          className: "doctag",
          begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
          relevance: 0,
        ),
      ],
    ),
    Mode(
      begin: "<%[%=-]?",
      end: "[%-]?%>",
      subLanguage: [Languages.ruby],
      excludeBegin: true,
      excludeEnd: true,
    ),
  ],
);
