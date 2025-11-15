import '../../languages/language/languages.dart';

class Mode {
  String? ref;
  Map<String, Mode>? refs;

  List<String>? aliases;

  /// `String | Map<String, [String, int]>`
  dynamic keywords;
  String? illegal;
  bool? caseInsensitive;
  List<Mode?>? contains;
  List<Mode?>? variants;
  Mode? starts;
  String? className;
  String? begin;
  String? beginKeywords;
  String? end;
  String? lexemes;
  bool? endSameAsBegin;
  bool? endsParent;
  bool? endsWithParent;
  int? relevance;

  List<Languages>? subLanguage;
  bool? excludeBegin;
  bool? excludeEnd;
  bool? skip;
  bool? returnBegin;
  bool? returnEnd;

  bool? compiled;
  Mode? parent;
  RegExp? lexemesRe;
  RegExp? beginRe;
  RegExp? endRe;
  RegExp? illegalRe;
  String? terminatorEnd;
  List<Mode>? cachedVariants;
  RegExp? terminators;

  bool? self;
  bool? disableAutodetect;

  Mode({
    this.ref,
    this.refs,
    //
    this.aliases,
    this.keywords,
    this.illegal,
    this.caseInsensitive,
    this.contains,
    this.variants,
    this.starts,
    this.className,
    this.begin,
    this.beginKeywords,
    this.end,
    this.lexemes,
    this.endSameAsBegin,
    this.endsParent,
    this.endsWithParent,
    this.relevance,
    this.subLanguage,
    this.excludeBegin,
    this.excludeEnd,
    this.skip,
    this.returnBegin,
    this.returnEnd,
    //
    this.self,
    this.disableAutodetect,
  });

  static Mode inherit(Mode a, [Mode? b]) {
    b ??= Mode();
    return Mode()
      ..aliases = b.aliases ?? a.aliases
      ..keywords = b.keywords ?? a.keywords
      ..illegal = b.illegal ?? a.illegal
      ..caseInsensitive = b.caseInsensitive ?? a.caseInsensitive
      ..contains = b.contains ?? a.contains
      ..variants = b.variants ?? a.variants
      ..starts = b.starts ?? a.starts
      ..className = b.className ?? a.className
      ..begin = b.begin ?? a.begin
      ..beginKeywords = b.beginKeywords ?? a.beginKeywords
      ..end = b.end ?? a.end
      ..lexemes = b.lexemes ?? a.lexemes
      ..endSameAsBegin = b.endSameAsBegin ?? a.endSameAsBegin
      ..endsParent = b.endsParent ?? a.endsParent
      ..endsWithParent = b.endsWithParent ?? a.endsWithParent
      ..relevance = b.relevance ?? a.relevance
      ..subLanguage = b.subLanguage ?? a.subLanguage
      ..excludeBegin = b.excludeBegin ?? a.excludeBegin
      ..excludeEnd = b.excludeEnd ?? a.excludeEnd
      ..skip = b.skip ?? a.skip
      ..returnBegin = b.returnBegin ?? a.returnBegin
      ..returnEnd = b.returnEnd ?? a.returnEnd

      //
      ..compiled = b.compiled ?? a.compiled
      ..parent = b.parent ?? a.parent
      ..lexemesRe = b.lexemesRe ?? a.lexemesRe
      ..beginRe = b.beginRe ?? a.beginRe
      ..endRe = b.endRe ?? a.endRe
      ..illegalRe = b.illegalRe ?? a.illegalRe
      ..terminatorEnd = b.terminatorEnd ?? a.terminatorEnd
      ..cachedVariants = b.cachedVariants ?? a.cachedVariants
      ..terminators = b.terminators ?? a.terminators;
  }
}

/*  Mode? _getLanguageMode(Languages lang) {
  switch (lang) {
    case Languages.c1:
      return c1Mode;
    case Languages.abnf:
      return abnfMode;
    case Languages.accesslog:
      return accesslogMode;
    case Languages.actionscript:
      return actionscriptMode;
    case Languages.ada:
      return adaMode;
    case Languages.all:
      return allMode;
    case Languages.angelscript:
      return angelscriptMode;
    case Languages.apache:
      return apacheMode;
    case Languages.applescript:
      return applescriptMode;
    case Languages.arcade:
      return arcadeMode;
    case Languages.arduino:
      return arduinoMode;
    case Languages.armasm:
      return armasmMode;
    case Languages.asciidoc:
      return asciidocMode;
    case Languages.aspectj:
      return aspectjMode;
    case Languages.autohotkey:
      return autohotkeyMode;
    case Languages.autoit:
      return autoitMode;
    case Languages.avrasm:
      return avrasmMode;
    case Languages.awk:
      return awkMode;
    case Languages.axapta:
      return axaptaMode;
    case Languages.bash:
      return bashMode;
    case Languages.basic:
      return basicMode;
    case Languages.bnf:
      return bnfMode;
    case Languages.brainfuck:
      return brainfuckMode;
    case Languages.cal:
      return calMode;
    case Languages.capnproto:
      return capnprotoMode;
    case Languages.ceylon:
      return ceylonMode;
    case Languages.clean:
      return cleanMode;
    case Languages.clojureRepl:
      return clojureReplMode;
    case Languages.clojure:
      return clojureMode;
    case Languages.cmake:
      return cmakeMode;
    case Languages.coffeescript:
      return coffeescriptMode;
    case Languages.coq:
      return coqMode;
    case Languages.cos:
      return cosMode;
    case Languages.cpp:
      return cppMode;
    case Languages.crmsh:
      return crmshMode;
    case Languages.crystal:
      return crystalMode;
    case Languages.cs:
      return csMode;
    case Languages.csp:
      return cspMode;
    case Languages.css:
      return cssMode;
    case Languages.d:
      return dMode;
    case Languages.dart:
      return dartMode;
    case Languages.delphi:
      return delphiMode;
    case Languages.diff:
      return diffMode;
    case Languages.django:
      return djangoMode;
    case Languages.dns:
      return dnsMode;
    case Languages.dockerfile:
      return dockerfileMode;
    case Languages.dos:
      return dosMode;
    case Languages.dsconfig:
      return dsconfigMode;
    case Languages.dts:
      return dtsMode;
    case Languages.dust:
      return dustMode;
    case Languages.ebnf:
      return ebnfMode;
    case Languages.elixir:
      return elixirMode;
    case Languages.elm:
      return elmMode;
    case Languages.erb:
      return erbMode;
    case Languages.erlangRepl:
      return erlangReplMode;
    case Languages.erlang:
      return erlangMode;
    case Languages.excel:
      return excelMode;
    case Languages.fix:
      return fixMode;
    case Languages.flix:
      return flixMode;
    case Languages.fortran:
      return fortranMode;
    case Languages.fsharp:
      return fsharpMode;
    case Languages.gams:
      return gamsMode;
    case Languages.gauss:
      return gaussMode;
    case Languages.gcode:
      return gcodeMode;
    case Languages.gherkin:
      return gherkinMode;
    case Languages.glsl:
      return glslMode;
    case Languages.gml:
      return gmlMode;
    case Languages.gn:
      return gnMode;
    case Languages.go:
      return goMode;
    case Languages.golo:
      return goloMode;
    case Languages.gradle:
      return gradleMode;
    case Languages.graphql:
      return graphqlMode;
    case Languages.groovy:
      return groovyMode;
    case Languages.haml:
      return hamlMode;
    case Languages.handlebars:
      return handlebarsMode;
    case Languages.haskell:
      return haskellMode;
    case Languages.haxe:
      return haxeMode;
    case Languages.hsp:
      return hspMode;
    case Languages.htmlbars:
      return htmlbarsMode;
    case Languages.http:
      return httpMode;
    case Languages.hy:
      return hyMode;
    case Languages.inform7:
      return inform7Mode;
    case Languages.ini:
      return iniMode;
    case Languages.irpf90:
      return irpf90Mode;
    case Languages.isbl:
      return isblMode;
    case Languages.java:
      return javaMode;
    case Languages.javascript:
      return javascriptMode;
    case Languages.jbossCli:
      return jbossCliMode;
    case Languages.json:
      return jsonMode;
    case Languages.juliaRepl:
      return juliaReplMode;
    case Languages.julia:
      return juliaMode;
    case Languages.kotlin:
      return kotlinMode;
    case Languages.lasso:
      return lassoMode;
    case Languages.ldif:
      return ldifMode;
    case Languages.leaf:
      return leafMode;
    case Languages.less:
      return lessMode;
    case Languages.lisp:
      return lispMode;
    case Languages.livecodeserver:
      return livecodeserverMode;
    case Languages.livescript:
      return livescriptMode;
    case Languages.llvm:
      return llvmMode;
    case Languages.lsl:
      return lslMode;
    case Languages.lua:
      return luaMode;
    case Languages.makefile:
      return makefileMode;
    case Languages.markdown:
      return markdownMode;
    case Languages.mathematica:
      return mathematicaMode;
    case Languages.matlab:
      return matlabMode;
    case Languages.maxima:
      return maximaMode;
    case Languages.mel:
      return melMode;
    case Languages.mercury:
      return mercuryMode;
    case Languages.mipsasm:
      return mipsasmMode;
    case Languages.mizar:
      return mizarMode;
    case Languages.mojolicious:
      return mojoliciousMode;
    case Languages.monkey:
      return monkeyMode;
    case Languages.moonscript:
      return moonscriptMode;
    case Languages.n1ql:
      return n1qlMode;
    case Languages.nginx:
      return nginxMode;
    case Languages.nimrod:
      return nimrodMode;
    case Languages.nix:
      return nixMode;
    case Languages.nsis:
      return nsisMode;
    case Languages.objectivec:
      return objectivecMode;
    case Languages.ocaml:
      return ocamlMode;
    case Languages.openscad:
      return openscadMode;
    case Languages.oxygene:
      return oxygeneMode;
    case Languages.parser3:
      return parser3Mode;
    case Languages.perl:
      return perlMode;
    case Languages.pf:
      return pfMode;
    case Languages.pgsql:
      return pgsqlMode;
    case Languages.php:
      return phpMode;
    case Languages.plaintext:
      return plaintextMode;
    case Languages.pony:
      return ponyMode;
    case Languages.powershell:
      return powershellMode;
    case Languages.processing:
      return processingMode;
    case Languages.profile:
      return profileMode;
    case Languages.prolog:
      return prologMode;
    case Languages.properties:
      return propertiesMode;
    case Languages.protobuf:
      return protobufMode;
    case Languages.puppet:
      return puppetMode;
    case Languages.purebasic:
      return purebasicMode;
    case Languages.python:
      return pythonMode;
    case Languages.q:
      return qMode;
    case Languages.qml:
      return qmlMode;
    case Languages.r:
      return rMode;
    case Languages.reasonml:
      return reasonmlMode;
    case Languages.rib:
      return ribMode;
    case Languages.roboconf:
      return roboconfMode;
    case Languages.routeros:
      return routerosMode;
    case Languages.rsl:
      return rslMode;
    case Languages.ruby:
      return rubyMode;
    case Languages.ruleslanguage:
      return ruleslanguageMode;
    case Languages.rust:
      return rustMode;
    case Languages.sas:
      return sasMode;
    case Languages.scala:
      return scalaMode;
    case Languages.scheme:
      return schemeMode;
    case Languages.scilab:
      return scilabMode;
    case Languages.scss:
      return scssMode;
    case Languages.shell:
      return shellMode;
    case Languages.smali:
      return smaliMode;
    case Languages.smalltalk:
      return smalltalkMode;
    case Languages.sml:
      return smlMode;
    case Languages.solidity:
      return solidityMode;
    case Languages.sqf:
      return sqfMode;
    case Languages.sql:
      return sqlMode;
    case Languages.stan:
      return stanMode;
    case Languages.stata:
      return stataMode;
    case Languages.step21:
      return step21Mode;
    case Languages.stylus:
      return stylusMode;
    case Languages.subunit:
      return subunitMode;
    case Languages.swift:
      return swiftMode;
    case Languages.taggerscript:
      return taggerscriptMode;
    case Languages.tap:
      return tapMode;
    case Languages.tcl:
      return tclMode;
    case Languages.tex:
      return texMode;
    case Languages.thrift:
      return thriftMode;
    case Languages.tp:
      return tpMode;
    case Languages.twig:
      return twigMode;
    case Languages.typescript:
      return typescriptMode;
    case Languages.vala:
      return valaMode;
    case Languages.vbnet:
      return vbnetMode;
    case Languages.vbscriptHtml:
      return vbscriptHtmlMode;
    case Languages.vbscript:
      return vbscriptMode;
    case Languages.verilog:
      return verilogMode;
    case Languages.vhdl:
      return vhdlMode;
    case Languages.vim:
      return vimMode;
    case Languages.vue:
      return vueMode;
    case Languages.x86asm:
      return x86asmMode;
    case Languages.xl:
      return xlMode;
    case Languages.xml:
      return xmlMode;
    case Languages.xquery:
      return xqueryMode;
    case Languages.yaml:
      return yamlMode;
    case Languages.zephir:
      return zephirMode;
    default:
      return null;
  }
} */
