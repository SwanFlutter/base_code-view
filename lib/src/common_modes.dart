// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: constant_identifier_names

import 'tools/mode.dart';

/// Common syntax highlighting mode: backslashEscape.
final backslashEscape = Mode(begin: "\\\\[\\s\\S]", relevance: 0);
/// Common syntax highlighting mode: aposStringMode.
final aposStringMode = Mode(
  className: "string",
  begin: "'",
  end: "'",
  illegal: "\\n",
  contains: [Mode(begin: "\\\\[\\s\\S]", relevance: 0)],
);
/// Common syntax highlighting mode: quoteStringMode.
final quoteStringMode = Mode(
  className: "string",
  begin: "\"",
  end: "\"",
  illegal: "\\n",
  contains: [Mode(begin: "\\\\[\\s\\S]", relevance: 0)],
);
/// Common syntax highlighting mode: phrasalWordsMode.
final phrasalWordsMode = Mode(
  begin: "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b",
);
/// Common syntax highlighting mode: cLineCommentMode.
final cLineCommentMode = Mode(
  className: "comment",
  begin: "//",
  end: "\$",
  contains: [
    Mode(
      begin: "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b",
    ),
    Mode(
      className: "doctag",
      begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
      relevance: 0,
    ),
  ],
);
/// Common syntax highlighting mode: cBlockCommentMode.
final cBlockCommentMode = Mode(
  className: "comment",
  begin: "/\\*",
  end: "\\*/",
  contains: [
    Mode(
      begin: "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b",
    ),
    Mode(
      className: "doctag",
      begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
      relevance: 0,
    ),
  ],
);
/// Common syntax highlighting mode: hashCommentMode.
final hashCommentMode = Mode(
  className: "comment",
  begin: "#",
  end: "\$",
  contains: [
    Mode(
      begin: "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b",
    ),
    Mode(
      className: "doctag",
      begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
      relevance: 0,
    ),
  ],
);
/// Common syntax highlighting mode: numberMode.
final numberMode = Mode(
  className: "number",
  begin: "\\b\\d+(\\.\\d+)?",
  relevance: 0,
);
/// Common syntax highlighting mode: cNumberMode.
final cNumberMode = Mode(
  className: "number",
  begin:
      "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
  relevance: 0,
);
/// Common syntax highlighting mode: binaryNumberMode.
final binaryNumberMode = Mode(
  className: "number",
  begin: "\\b(0b[01]+)",
  relevance: 0,
);
/// Common syntax highlighting mode: cssNumberMode.
final cssNumberMode = Mode(
  className: "number",
  begin: "\\b\\d+(\\.\\d+)?(%|em|ex|ch|rem|vw|vh|vmin|vmax|cm|mm|in|pt|pc|px|deg|grad|rad|turn|s|ms|Hz|kHz|dpi|dpcm|dppx)?",
  relevance: 0,
);
/// Common syntax highlighting mode: regexpMode.
final regexpMode = Mode(
  className: "regexp",
  begin: "\\/",
  end: "\\/[gimuy]*",
  illegal: "\\n",
  contains: [
    Mode(begin: "\\\\[\\s\\S]", relevance: 0),
    Mode(
      begin: "\\[",
      end: "\\]",
      relevance: 0,
      contains: [Mode(begin: "\\\\[\\s\\S]", relevance: 0)],
    ),
  ],
);
/// Common syntax highlighting mode: titleMode.
final titleMode = Mode(className: "title", begin: "[a-zA-Z]\\w*", relevance: 0);
/// Common syntax highlighting mode: underscoreTitleMode.
final underscoreTitleMode = Mode(
  className: "title",
  begin: "[a-zA-Z_]\\w*",
  relevance: 0,
);
/// Common syntax highlighting mode: methodGuard.
final methodGuard = Mode(begin: "\\.\\s*[a-zA-Z_]\\w*", relevance: 0);
