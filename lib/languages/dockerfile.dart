// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/tools/mode.dart';
import '../src/common_modes.dart';
import 'language/languages.dart';

/// Syntax highlighting mode for dockerfile.
final dockerfile = Mode(
  refs: {},
  aliases: ["docker"],
  caseInsensitive: true,
  keywords: "from maintainer expose env arg user onbuild stopsignal",
  contains: [
    hashCommentMode,
    aposStringMode,
    quoteStringMode,
    numberMode,
    Mode(
      beginKeywords:
          "run cmd entrypoint volume add copy workdir label healthcheck shell",
      starts: Mode(end: "[^\\\\]\$", subLanguage: [Languages.bash]),
    ),
  ],
  illegal: "</",
);
