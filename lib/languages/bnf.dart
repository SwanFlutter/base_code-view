// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/common_modes.dart';
import '../src/tools/mode.dart';

/// Syntax highlighting mode for bnf.
final bnf = Mode(
  refs: {},
  contains: [
    Mode(className: "attribute", begin: "<", end: ">"),
    Mode(
      begin: "::=",
      starts: Mode(
        end: "\$",
        contains: [
          Mode(begin: "<", end: ">"),
          cLineCommentMode,
          cBlockCommentMode,
          aposStringMode,
          quoteStringMode,
        ],
      ),
    ),
  ],
);
