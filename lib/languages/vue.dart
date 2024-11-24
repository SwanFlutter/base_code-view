// GENERATED CODE - DO NOT MODIFY BY HAND

import 'language/languages.dart';

import '../src/common_modes.dart';
import '../src/tools/mode.dart';

final vue = Mode(refs: {}, subLanguage: [
  Languages.xml
], contains: [
  Mode(
      className: "comment",
      begin: "<!--",
      end: "-->",
      contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 10),
  Mode(
      begin: "^(\\s*)(<script>)",
      end: "^(\\s*)(<\\/script>)",
      subLanguage: [Languages.javascript],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<script lang=[\"']ts[\"']>)",
      end: "^(\\s*)(<\\/script>)",
      subLanguage: [Languages.typescript],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<style(\\sscoped)?>)",
      end: "^(\\s*)(<\\/style>)",
      subLanguage: [Languages.css],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<style lang=[\"'](scss|sass)[\"'](\\sscoped)?>)",
      end: "^(\\s*)(<\\/style>)",
      subLanguage: [Languages.scss],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<style lang=[\"']stylus[\"'](\\sscoped)?>)",
      end: "^(\\s*)(<\\/style>)",
      subLanguage: [Languages.stylus],
      excludeBegin: true,
      excludeEnd: true)
]);
