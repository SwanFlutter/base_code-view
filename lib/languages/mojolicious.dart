// GENERATED CODE - DO NOT MODIFY BY HAND

import 'language/languages.dart';

import '../src/tools/mode.dart';

final mojolicious = Mode(refs: {}, subLanguage: [
  Languages.xml
], contains: [
  Mode(className: "meta", begin: "^__(END|DATA)__\$"),
  Mode(begin: "^\\s*%{1,2}={0,2}", end: "\$", subLanguage: [Languages.perl]),
  Mode(begin: "<%{1,2}={0,2}", end: "={0,1}%>", subLanguage: [Languages.perl], excludeBegin: true, excludeEnd: true)
]);
