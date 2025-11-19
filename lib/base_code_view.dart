/// A Flutter package for displaying and highlighting code with customizable styles and features.
///
/// This package provides a [Highlight] class for syntax highlighting of code in multiple
/// programming languages. It generates styled HTML output or Flutter TextSpans for displaying
/// highlighted code with proper syntax coloring and styling.
///
/// Main features:
/// - Support for 300+ programming languages
/// - Syntax highlighting with customizable styles
/// - HTML and Flutter TextSpan output formats
/// - Automatic language detection
/// - Text selection styling
///
/// Usage example:
/// ```dart
/// import 'package:base_cod_view/base_code_view.dart';
///
/// void main() {
///   final highlight = Highlight();
///   highlight.registerLanguage(Languages.dart, dart);
///
///   final result = highlight.parse(
///     source: 'void main() { print("Hello"); }',
///     language: Languages.dart,
///   );
///
///   // Use with SelectableText
///   SelectableText.rich(result.nodes![0].toTextSpan());
/// }
/// ```
library;

// Language definitions and exports (documented in languages_doc.dart)
export 'package:base_cod_view/languages_doc.dart';

export 'package:base_cod_view/languages/abnf.dart';
export 'package:base_cod_view/languages/accesslog.dart';
export 'package:base_cod_view/languages/actionscript.dart';
export 'package:base_cod_view/languages/ada.dart';
export 'package:base_cod_view/languages/all.dart';
export 'package:base_cod_view/languages/angelscript.dart';
export 'package:base_cod_view/languages/apache.dart';
export 'package:base_cod_view/languages/applescript.dart';
export 'package:base_cod_view/languages/arcade.dart';
export 'package:base_cod_view/languages/arduino.dart';
export 'package:base_cod_view/languages/armasm.dart';
export 'package:base_cod_view/languages/asciidoc.dart';
export 'package:base_cod_view/languages/aspectj.dart';
export 'package:base_cod_view/languages/autohotkey.dart';
export 'package:base_cod_view/languages/autoit.dart';
export 'package:base_cod_view/languages/avrasm.dart';
export 'package:base_cod_view/languages/awk.dart';
export 'package:base_cod_view/languages/axapta.dart';
export 'package:base_cod_view/languages/bash.dart';
export 'package:base_cod_view/languages/basic.dart';
export 'package:base_cod_view/languages/bnf.dart';
export 'package:base_cod_view/languages/brainfuck.dart';
export 'package:base_cod_view/languages/cal.dart';
export 'package:base_cod_view/languages/capnproto.dart';
export 'package:base_cod_view/languages/ceylon.dart';
export 'package:base_cod_view/languages/clean.dart';
export 'package:base_cod_view/languages/clojure.dart';
export 'package:base_cod_view/languages/clojure_repl.dart';
export 'package:base_cod_view/languages/cmake.dart';
export 'package:base_cod_view/languages/coffeescript.dart';
export 'package:base_cod_view/languages/coq.dart';
export 'package:base_cod_view/languages/cos.dart';
export 'package:base_cod_view/languages/cpp.dart';
export 'package:base_cod_view/languages/crmsh.dart';
export 'package:base_cod_view/languages/crystal.dart';
export 'package:base_cod_view/languages/cs.dart';
export 'package:base_cod_view/languages/csp.dart';
export 'package:base_cod_view/languages/css.dart';
export 'package:base_cod_view/languages/d.dart';
export 'package:base_cod_view/languages/dart.dart';
export 'package:base_cod_view/languages/delphi.dart';
export 'package:base_cod_view/languages/diff.dart';
export 'package:base_cod_view/languages/django.dart';
export 'package:base_cod_view/languages/dns.dart';
export 'package:base_cod_view/languages/dockerfile.dart';
export 'package:base_cod_view/languages/dos.dart';
export 'package:base_cod_view/languages/dsconfig.dart';
export 'package:base_cod_view/languages/dts.dart';
export 'package:base_cod_view/languages/dust.dart';
export 'package:base_cod_view/languages/ebnf.dart';
export 'package:base_cod_view/languages/elixir.dart';
export 'package:base_cod_view/languages/elm.dart';
export 'package:base_cod_view/languages/erb.dart';
export 'package:base_cod_view/languages/erlang.dart';
export 'package:base_cod_view/languages/erlang_repl.dart';
export 'package:base_cod_view/languages/excel.dart';
export 'package:base_cod_view/languages/fix.dart';
export 'package:base_cod_view/languages/flix.dart';
export 'package:base_cod_view/languages/fortran.dart';
export 'package:base_cod_view/languages/fsharp.dart';
export 'package:base_cod_view/languages/gams.dart';
export 'package:base_cod_view/languages/gauss.dart';
export 'package:base_cod_view/languages/gcode.dart';
export 'package:base_cod_view/languages/gherkin.dart';
export 'package:base_cod_view/languages/glsl.dart';
export 'package:base_cod_view/languages/gml.dart';
export 'package:base_cod_view/languages/gn.dart';
export 'package:base_cod_view/languages/go.dart';
export 'package:base_cod_view/languages/golo.dart';
export 'package:base_cod_view/languages/gradle.dart';
export 'package:base_cod_view/languages/graphql.dart';
export 'package:base_cod_view/languages/groovy.dart';
export 'package:base_cod_view/languages/haml.dart';
export 'package:base_cod_view/languages/handlebars.dart';
export 'package:base_cod_view/languages/haskell.dart';
export 'package:base_cod_view/languages/haxe.dart';
export 'package:base_cod_view/languages/hsp.dart';
export 'package:base_cod_view/languages/htmlbars.dart';
export 'package:base_cod_view/languages/http.dart';
export 'package:base_cod_view/languages/hy.dart';
export 'package:base_cod_view/languages/inform7.dart';
export 'package:base_cod_view/languages/ini.dart';
export 'package:base_cod_view/languages/irpf90.dart';
export 'package:base_cod_view/languages/isbl.dart';
export 'package:base_cod_view/languages/java.dart';
export 'package:base_cod_view/languages/javascript.dart';
export 'package:base_cod_view/languages/jboss_cli.dart';
export 'package:base_cod_view/languages/json.dart';
export 'package:base_cod_view/languages/julia.dart';
export 'package:base_cod_view/languages/julia_repl.dart';
export 'package:base_cod_view/languages/kotlin.dart';
export 'package:base_cod_view/languages/lang_1c.dart';
export 'package:base_cod_view/languages/language/languages.dart';
export 'package:base_cod_view/languages/lasso.dart';
export 'package:base_cod_view/languages/ldif.dart';
export 'package:base_cod_view/languages/leaf.dart';
export 'package:base_cod_view/languages/less.dart';
export 'package:base_cod_view/languages/lisp.dart';
export 'package:base_cod_view/languages/livecodeserver.dart';
export 'package:base_cod_view/languages/livescript.dart';
export 'package:base_cod_view/languages/llvm.dart';
export 'package:base_cod_view/languages/lsl.dart';
export 'package:base_cod_view/languages/lua.dart';
export 'package:base_cod_view/languages/makefile.dart';
export 'package:base_cod_view/languages/markdown.dart';
export 'package:base_cod_view/languages/mathematica.dart';
export 'package:base_cod_view/languages/matlab.dart';
export 'package:base_cod_view/languages/maxima.dart';
export 'package:base_cod_view/languages/mel.dart';
export 'package:base_cod_view/languages/mercury.dart';
export 'package:base_cod_view/languages/mipsasm.dart';
export 'package:base_cod_view/languages/mizar.dart';
export 'package:base_cod_view/languages/mojolicious.dart';
export 'package:base_cod_view/languages/monkey.dart';
export 'package:base_cod_view/languages/moonscript.dart';
export 'package:base_cod_view/languages/n1ql.dart';
export 'package:base_cod_view/languages/nginx.dart';
export 'package:base_cod_view/languages/nimrod.dart';
export 'package:base_cod_view/languages/nix.dart';
export 'package:base_cod_view/languages/nsis.dart';
export 'package:base_cod_view/languages/objectivec.dart';
export 'package:base_cod_view/languages/ocaml.dart';
export 'package:base_cod_view/languages/openscad.dart';
export 'package:base_cod_view/languages/oxygene.dart';
export 'package:base_cod_view/languages/parser3.dart';
export 'package:base_cod_view/languages/perl.dart';
export 'package:base_cod_view/languages/pf.dart';
export 'package:base_cod_view/languages/pgsql.dart';
export 'package:base_cod_view/languages/php.dart';
export 'package:base_cod_view/languages/plaintext.dart';
export 'package:base_cod_view/languages/pony.dart';
export 'package:base_cod_view/languages/powershell.dart';
export 'package:base_cod_view/languages/processing.dart';
export 'package:base_cod_view/languages/profile.dart';
export 'package:base_cod_view/languages/prolog.dart';
export 'package:base_cod_view/languages/properties.dart';
export 'package:base_cod_view/languages/protobuf.dart';
export 'package:base_cod_view/languages/puppet.dart';
export 'package:base_cod_view/languages/purebasic.dart';
export 'package:base_cod_view/languages/python.dart';
export 'package:base_cod_view/languages/q.dart';
export 'package:base_cod_view/languages/qml.dart';
export 'package:base_cod_view/languages/r.dart';
export 'package:base_cod_view/languages/reasonml.dart';
export 'package:base_cod_view/languages/rib.dart';
export 'package:base_cod_view/languages/roboconf.dart';
export 'package:base_cod_view/languages/routeros.dart';
export 'package:base_cod_view/languages/rsl.dart';
export 'package:base_cod_view/languages/ruby.dart';
export 'package:base_cod_view/languages/ruleslanguage.dart';
export 'package:base_cod_view/languages/rust.dart';
export 'package:base_cod_view/languages/sas.dart';
export 'package:base_cod_view/languages/scala.dart';
export 'package:base_cod_view/languages/scheme.dart';
export 'package:base_cod_view/languages/scilab.dart';
export 'package:base_cod_view/languages/scss.dart';
export 'package:base_cod_view/languages/shell.dart';
export 'package:base_cod_view/languages/smali.dart';
export 'package:base_cod_view/languages/smalltalk.dart';
export 'package:base_cod_view/languages/sml.dart';
export 'package:base_cod_view/languages/sqf.dart';
export 'package:base_cod_view/languages/sql.dart';
export 'package:base_cod_view/languages/stan.dart';
export 'package:base_cod_view/languages/stata.dart';
export 'package:base_cod_view/languages/step21.dart';
export 'package:base_cod_view/languages/stylus.dart';
export 'package:base_cod_view/languages/subunit.dart';
export 'package:base_cod_view/languages/swift.dart';
export 'package:base_cod_view/languages/taggerscript.dart';
export 'package:base_cod_view/languages/tap.dart';
export 'package:base_cod_view/languages/tcl.dart';
export 'package:base_cod_view/languages/tex.dart';
export 'package:base_cod_view/languages/thrift.dart';
export 'package:base_cod_view/languages/tp.dart';
export 'package:base_cod_view/languages/twig.dart';
export 'package:base_cod_view/languages/typescript.dart';
export 'package:base_cod_view/languages/vala.dart';
export 'package:base_cod_view/languages/vbnet.dart';
export 'package:base_cod_view/languages/vbscript.dart';
export 'package:base_cod_view/languages/vbscript_html.dart';
export 'package:base_cod_view/languages/verilog.dart';
export 'package:base_cod_view/languages/vhdl.dart';
export 'package:base_cod_view/languages/vim.dart';
export 'package:base_cod_view/languages/x86asm.dart';
export 'package:base_cod_view/languages/xl.dart';
export 'package:base_cod_view/languages/xml.dart';
export 'package:base_cod_view/languages/xquery.dart';
export 'package:base_cod_view/languages/zephir.dart';

export 'src/base_code_view.dart';
