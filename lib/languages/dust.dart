// GENERATED CODE - DO NOT MODIFY BY HAND

import 'language/languages.dart';

import '../src/common_modes.dart';
import '../src/tools/mode.dart';

final dust = Mode(
    refs: {},
    aliases: ["dst"],
    caseInsensitive: true,
    subLanguage: [Languages.xml],
    contains: [
      Mode(
          className: "template-tag",
          begin: "\\{[#\\/]",
          end: "\\}",
          illegal: ";",
          contains: [
            Mode(
                className: "name",
                begin: "[a-zA-Z\\.-]+",
                starts: Mode(
                    endsWithParent: true,
                    relevance: 0,
                    contains: [QUOTE_STRING_MODE]))
          ]),
      Mode(
          className: "template-variable",
          begin: "\\{",
          end: "\\}",
          illegal: ";",
          keywords: "if eq ne lt lte gt gte select default math sep")
    ]);
