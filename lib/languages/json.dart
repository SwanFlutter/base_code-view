// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/common_modes.dart';
import '../src/tools/mode.dart';

/// Syntax highlighting mode for json.
final json = Mode(
  refs: {
    '~contains~2~contains~1~contains~3': Mode(
      begin: "\\[",
      end: "\\]",
      contains: [
        Mode(
          end: ",",
          endsWithParent: true,
          excludeEnd: true,
          contains: [
            quoteStringMode,
            cNumberMode,
            Mode(ref: '~contains~2'),
            Mode(ref: '~contains~2~contains~1~contains~3'),
            cLineCommentMode,
            cBlockCommentMode,
          ],
          keywords: {"literal": "true false null"},
        ),
      ],
      illegal: "\\S",
    ),
    '~contains~2': Mode(
      begin: "{",
      end: "}",
      contains: [
        Mode(
          className: "attr",
          begin: "\"",
          end: "\"",
          contains: [backslashEscape],
          illegal: "\\n",
        ),
        Mode(
          end: ",",
          endsWithParent: true,
          excludeEnd: true,
          contains: [
            quoteStringMode,
            cNumberMode,
            Mode(ref: '~contains~2'),
            Mode(ref: '~contains~2~contains~1~contains~3'),
            cLineCommentMode,
            cBlockCommentMode,
          ],
          keywords: {"literal": "true false null"},
          begin: ":",
        ),
        cLineCommentMode,
        cBlockCommentMode,
      ],
      illegal: "\\S",
    ),
  },
  contains: [
    quoteStringMode,
    cNumberMode,
    Mode(ref: '~contains~2'),
    Mode(ref: '~contains~2~contains~1~contains~3'),
    cLineCommentMode,
    cBlockCommentMode,
  ],
  keywords: {"literal": "true false null"},
  illegal: "\\S",
);
