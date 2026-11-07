// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/tools/mode.dart';
import 'language/languages.dart';

/// Syntax highlighting mode for clojureRepl.
final clojureRepl = Mode(
  refs: {},
  contains: [
    Mode(
      className: "meta",
      begin: "^([\\w.-]+|\\s*#_)?=>",
      starts: Mode(end: "\$", subLanguage: [Languages.clojure]),
    ),
  ],
);
