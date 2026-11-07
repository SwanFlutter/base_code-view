// GENERATED CODE - DO NOT MODIFY BY HAND

import 'language/languages.dart';

import '../src/tools/mode.dart';

/// Syntax highlighting mode for juliaRepl.
final juliaRepl = Mode(refs: {}, contains: [
  Mode(
      className: "meta",
      begin: "^julia>",
      relevance: 10,
      starts: Mode(end: "^(?![ ]{6})", subLanguage: [Languages.julia]),
      aliases: ["jldoctest"])
]);
