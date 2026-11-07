// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/common_modes.dart';
import '../src/tools/mode.dart';

/// Syntax highlighting mode for flix.
final flix = Mode(
  refs: {},
  keywords: {
    "literal": "true false",
    "keyword": "case class def else enum if impl import in lat rel index let match namespace switch type yield with",
  },
  contains: [
    cLineCommentMode,
    cBlockCommentMode,
    Mode(className: "string", begin: "'(.|\\\\[xXuU][a-zA-Z0-9]+)'"),
    Mode(
      className: "string",
      variants: [Mode(begin: "\"", end: "\"")],
    ),
    Mode(
      className: "function",
      beginKeywords: "def",
      end: "[:={\\[(\\n;]",
      excludeEnd: true,
      contains: [
        Mode(
          className: "title",
          begin: "[^0-9\\n\\t \"'(),.`{}\\[\\]:;][^\\n\\t \"'(),.`{}\\[\\]:;]+|[^0-9\\n\\t \"'(),.`{}\\[\\]:;=]",
        ),
      ],
    ),
    cNumberMode,
  ],
);
