// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/common_modes.dart';
import '../src/tools/mode.dart';
import 'language/languages.dart';

/// Syntax highlighting mode for tap.
final tap = Mode(
  refs: {},
  caseInsensitive: true,
  contains: [
    hashCommentMode,
    Mode(
      className: "meta",
      variants: [
        Mode(begin: "^TAP version (\\d+)\$"),
        Mode(begin: "^1\\.\\.(\\d+)\$"),
      ],
    ),
    Mode(
      begin: "(s+)?---\$",
      end: "\\.\\.\\.\$",
      subLanguage: [Languages.yaml],
      relevance: 0,
    ),
    Mode(className: "number", begin: " (\\d+) "),
    Mode(
      className: "symbol",
      variants: [
        Mode(begin: "^ok"),
        Mode(begin: "^not ok"),
      ],
    ),
  ],
);
