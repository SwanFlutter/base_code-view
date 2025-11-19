/// Syntax highlighting support for programming languages.
///
/// This library exports Mode definitions for various programming languages
/// that can be used with the [Highlight] class for syntax highlighting.
/// Each language constant contains the grammar rules needed for highlighting
/// that language's syntax.

// Re-export language definitions with documentation

/// Syntax highlighting mode for ABNF (Augmented Backus-Naur Form).
/// Used for defining formal language specifications.
export 'package:base_cod_view/languages/abnf.dart' show abnf;

/// Syntax highlighting mode for Apache access log format.
/// Highlights HTTP request and response logging.
export 'package:base_cod_view/languages/accesslog.dart' show accesslog;

/// Syntax highlighting mode for ActionScript (Flash scripting language).
/// Used for Adobe Flash multimedia content development.
export 'package:base_cod_view/languages/actionscript.dart' show actionscript;

/// Syntax highlighting mode for Ada programming language.
/// A general-purpose language used in safety-critical systems.
export 'package:base_cod_view/languages/ada.dart' show ada;

/// Aggregated export of all supported language definitions.
/// Contains mappings for all programming languages supported by this package.
export 'package:base_cod_view/languages/all.dart'
    show allLanguages, builtinLanguages, communityLanguages;

/// Syntax highlighting mode for AngelScript.
/// A scripting language commonly used in game development.
export 'package:base_cod_view/languages/angelscript.dart' show angelscript;

/// Syntax highlighting mode for Apache configuration files.
/// Used for web server configuration highlighting.
export 'package:base_cod_view/languages/apache.dart' show apache;

/// Syntax highlighting mode for AppleScript.
/// Scripting language for macOS automation.
export 'package:base_cod_view/languages/applescript.dart' show applescript;

/// Syntax highlighting mode for Arcade scripting language.
/// Used for game logic in Esri ArcGIS platform.
export 'package:base_cod_view/languages/arcade.dart' show arcade;

/// Syntax highlighting mode for Arduino programming.
/// Microcontroller programming language based on C++.
export 'package:base_cod_view/languages/arduino.dart' show arduino;

/// Syntax highlighting mode for ARM assembly language.
/// Low-level assembly for ARM processors.
export 'package:base_cod_view/languages/armasm.dart' show armasm;

/// Syntax highlighting mode for AsciiDoc markup language.
/// Lightweight markup format for documentation.
export 'package:base_cod_view/languages/asciidoc.dart' show asciidoc;

/// Syntax highlighting mode for AspectJ programming language.
/// Aspect-oriented extension of Java.
export 'package:base_cod_view/languages/aspectj.dart' show aspectj;

/// Syntax highlighting mode for AutoHotkey scripting language.
/// Windows automation scripting language.
export 'package:base_cod_view/languages/autohotkey.dart' show autohotkey;

/// Syntax highlighting mode for AutoIt scripting language.
/// Automation and scripting for Windows.
export 'package:base_cod_view/languages/autoit.dart' show autoit;

/// Syntax highlighting mode for AVR assembly language.
/// Assembly for AVR microcontrollers.
export 'package:base_cod_view/languages/avrasm.dart' show avrasm;

/// Syntax highlighting mode for AWK programming language.
/// Text processing and data extraction language.
export 'package:base_cod_view/languages/awk.dart' show awk;

/// Syntax highlighting mode for Axapta (Microsoft Dynamics AX).
/// Business application development language.
export 'package:base_cod_view/languages/axapta.dart' show axapta;

/// Syntax highlighting mode for Bash shell scripting.
/// Unix/Linux shell scripting language.
export 'package:base_cod_view/languages/bash.dart' show bash;

/// Syntax highlighting mode for BASIC programming language.
/// Beginner's All-purpose Symbolic Instruction Code.
export 'package:base_cod_view/languages/basic.dart' show basic;

/// Syntax highlighting mode for BNF (Backus-Naur Form).
/// Notation for context-free grammars.
export 'package:base_cod_view/languages/bnf.dart' show bnf;

/// Syntax highlighting mode for Brainfuck esoteric language.
/// Minimalist esoteric programming language.
export 'package:base_cod_view/languages/brainfuck.dart' show brainfuck;

/// Syntax highlighting mode for CAL programming language.
/// Configuration, automation, and language (SAP).
export 'package:base_cod_view/languages/cal.dart' show cal;

/// Syntax highlighting mode for Cap'n Proto serialization.
/// Data serialization format and schema language.
export 'package:base_cod_view/languages/capnproto.dart' show capnproto;

/// Syntax highlighting mode for Ceylon programming language.
/// Object-oriented language for the JVM.
export 'package:base_cod_view/languages/ceylon.dart' show ceylon;

/// Syntax highlighting mode for Clean programming language.
/// Functional programming language.
export 'package:base_cod_view/languages/clean.dart' show clean;

/// Syntax highlighting mode for Clojure programming language.
/// Lisp-like language running on the JVM.
export 'package:base_cod_view/languages/clojure.dart' show clojure;

/// Syntax highlighting mode for Clojure REPL (Read-Eval-Print Loop).
/// Interactive Clojure shell syntax.
export 'package:base_cod_view/languages/clojure_repl.dart' show clojureRepl;

/// Syntax highlighting mode for CMake build system.
/// Cross-platform build file configuration.
export 'package:base_cod_view/languages/cmake.dart' show cmake;

/// Syntax highlighting mode for CoffeeScript programming language.
/// Language that compiles to JavaScript.
export 'package:base_cod_view/languages/coffeescript.dart' show coffeescript;

/// Syntax highlighting mode for Coq proof assistant.
/// Interactive theorem prover and proof checker.
export 'package:base_cod_view/languages/coq.dart' show coq;

/// Syntax highlighting mode for Caché Object Script.
/// Object-oriented scripting for InterSystems Caché.
export 'package:base_cod_view/languages/cos.dart' show cos;

/// Syntax highlighting mode for C++ programming language.
/// General-purpose programming language.
export 'package:base_cod_view/languages/cpp.dart' show cpp;

/// Syntax highlighting mode for Crmsh (ClusterLabs management).
/// High-availability cluster configuration.
export 'package:base_cod_view/languages/crmsh.dart' show crmsh;

/// Syntax highlighting mode for Crystal programming language.
/// Ruby-like language with static typing and compilation.
export 'package:base_cod_view/languages/crystal.dart' show crystal;

/// Syntax highlighting mode for C# programming language.
/// Object-oriented language for .NET platform.
export 'package:base_cod_view/languages/cs.dart' show cs;

/// Syntax highlighting mode for CSP (Content Security Policy).
/// Browser security policy definition.
export 'package:base_cod_view/languages/csp.dart' show csp;

/// Syntax highlighting mode for CSS (Cascading Style Sheets).
/// Web styling language.
export 'package:base_cod_view/languages/css.dart' show css;

/// Syntax highlighting mode for D programming language.
/// Systems programming language.
export 'package:base_cod_view/languages/d.dart' show d;

/// Syntax highlighting mode for Dart programming language.
/// Google's multiplatform programming language.
export 'package:base_cod_view/languages/dart.dart' show dart;

/// Syntax highlighting mode for Delphi programming language.
/// Object Pascal IDE for Windows development.
export 'package:base_cod_view/languages/delphi.dart' show delphi;

/// Syntax highlighting mode for Diff/Patch format.
/// Unified diff output for showing code changes.
export 'package:base_cod_view/languages/diff.dart' show diff;

/// Syntax highlighting mode for Django templating language.
/// Python web framework template syntax.
export 'package:base_cod_view/languages/django.dart' show django;

/// Syntax highlighting mode for DNS zone file format.
/// Domain name system configuration.
export 'package:base_cod_view/languages/dns.dart' show dns;

/// Syntax highlighting mode for Dockerfile.
/// Container image build configuration.
export 'package:base_cod_view/languages/dockerfile.dart' show dockerfile;

/// Syntax highlighting mode for DOS batch scripting.
/// Windows command prompt batch files.
export 'package:base_cod_view/languages/dos.dart' show dos;

/// Syntax highlighting mode for DSConfig configuration.
/// LDAP directory server configuration.
export 'package:base_cod_view/languages/dsconfig.dart' show dsconfig;

/// Syntax highlighting mode for Device Tree Source.
/// Linux kernel device tree format.
export 'package:base_cod_view/languages/dts.dart' show dts;

/// Syntax highlighting mode for Dust templating language.
/// JavaScript templating engine syntax.
export 'package:base_cod_view/languages/dust.dart' show dust;

/// Syntax highlighting mode for EBNF (Extended Backus-Naur Form).
/// Extended notation for context-free grammars.
export 'package:base_cod_view/languages/ebnf.dart' show ebnf;

/// Syntax highlighting mode for Elixir programming language.
/// Functional language on Erlang VM.
export 'package:base_cod_view/languages/elixir.dart' show elixir;

/// Syntax highlighting mode for Elm programming language.
/// Functional language for building web interfaces.
export 'package:base_cod_view/languages/elm.dart' show elm;

/// Syntax highlighting mode for ERB (Embedded Ruby) templating.
/// Ruby embedded in HTML and other text.
export 'package:base_cod_view/languages/erb.dart' show erb;

/// Syntax highlighting mode for Erlang programming language.
/// Concurrent functional language.
export 'package:base_cod_view/languages/erlang.dart' show erlang;

/// Syntax highlighting mode for Erlang REPL (Read-Eval-Print Loop).
/// Interactive Erlang shell syntax.
export 'package:base_cod_view/languages/erlang_repl.dart' show erlangRepl;

/// Syntax highlighting mode for Microsoft Excel formulas.
/// Spreadsheet formula syntax.
export 'package:base_cod_view/languages/excel.dart' show excel;

/// Syntax highlighting mode for FIX protocol (Financial Information eXchange).
/// Financial data exchange protocol.
export 'package:base_cod_view/languages/fix.dart' show fix;

/// Syntax highlighting mode for Flix programming language.
/// Logic language inspired by Datalog.
export 'package:base_cod_view/languages/flix.dart' show flix;

/// Syntax highlighting mode for Fortran programming language.
/// Scientific computing language.
export 'package:base_cod_view/languages/fortran.dart' show fortran;

/// Syntax highlighting mode for F# programming language.
/// Functional-first language on .NET.
export 'package:base_cod_view/languages/fsharp.dart' show fsharp;

/// Syntax highlighting mode for GAMS (General Algebraic Modeling System).
/// Optimization and mathematical modeling language.
export 'package:base_cod_view/languages/gams.dart' show gams;

/// Syntax highlighting mode for Gauss programming language.
/// Matrix and statistical programming language.
export 'package:base_cod_view/languages/gauss.dart' show gauss;

/// Syntax highlighting mode for G-code (CNC machining code).
/// Numerical control programming language.
export 'package:base_cod_view/languages/gcode.dart' show gcode;

/// Syntax highlighting mode for Gherkin (Cucumber) BDD syntax.
/// Behavior-driven development specification language.
export 'package:base_cod_view/languages/gherkin.dart' show gherkin;

/// Syntax highlighting mode for GLSL (OpenGL Shading Language).
/// GPU shader programming language.
export 'package:base_cod_view/languages/glsl.dart' show glsl;

/// Syntax highlighting mode for GML (Game Maker Language).
/// GameMaker Studio development language.
export 'package:base_cod_view/languages/gml.dart' show gml;

/// Syntax highlighting mode for GN (Generate Ninja) build system.
/// Chromium project build system.
export 'package:base_cod_view/languages/gn.dart' show gn;

/// Syntax highlighting mode for Go programming language.
/// Compiled language designed for simplicity and concurrency.
export 'package:base_cod_view/languages/go.dart' show go;

/// Syntax highlighting mode for Golo programming language.
/// Dynamically typed language for the JVM.
export 'package:base_cod_view/languages/golo.dart' show golo;

/// Syntax highlighting mode for Gradle build system.
/// Build automation tool for Java and Android.
export 'package:base_cod_view/languages/gradle.dart' show gradle;

/// Syntax highlighting mode for GraphQL query language.
/// Query language for APIs.
export 'package:base_cod_view/languages/graphql.dart' show graphql;

/// Syntax highlighting mode for Groovy programming language.
/// JVM language with Java compatibility.
export 'package:base_cod_view/languages/groovy.dart' show groovy;

/// Syntax highlighting mode for HAML (HTML Abstraction Markup Language).
/// HTML templating with clean syntax.
export 'package:base_cod_view/languages/haml.dart' show haml;

/// Syntax highlighting mode for Handlebars templating language.
/// Logic-less templates for JavaScript.
export 'package:base_cod_view/languages/handlebars.dart' show handlebars;

/// Syntax highlighting mode for Haskell programming language.
/// Purely functional programming language.
export 'package:base_cod_view/languages/haskell.dart' show haskell;

/// Syntax highlighting mode for Haxe programming language.
/// Cross-platform high-level language.
export 'package:base_cod_view/languages/haxe.dart' show haxe;

/// Syntax highlighting mode for HSP (Hot Soup Processor).
/// Japanese game programming language.
export 'package:base_cod_view/languages/hsp.dart' show hsp;

/// Syntax highlighting mode for HTMLBars templating.
/// Ember.js template syntax.
export 'package:base_cod_view/languages/htmlbars.dart' show htmlbars;

/// Syntax highlighting mode for HTTP protocol requests.
/// HTTP request format highlighting.
export 'package:base_cod_view/languages/http.dart' show http;

/// Syntax highlighting mode for Hy programming language.
/// Lisp dialect that compiles to Python.
export 'package:base_cod_view/languages/hy.dart' show hy;

/// Syntax highlighting mode for Inform 7 (Interactive Fiction).
/// Domain-specific language for interactive fiction.
export 'package:base_cod_view/languages/inform7.dart' show inform7;

/// Syntax highlighting mode for INI configuration files.
/// Simple configuration file format.
export 'package:base_cod_view/languages/ini.dart' show ini;

/// Syntax highlighting mode for IRPF90 (Implicit Relativity Perturbation For nineFortran).
/// Quantum chemistry program generation language.
export 'package:base_cod_view/languages/irpf90.dart' show irpf90;

/// Syntax highlighting mode for ISBL (Information Systems Business Language).
/// SAP business programming language.
export 'package:base_cod_view/languages/isbl.dart' show isbl;

/// Syntax highlighting mode for Java programming language.
/// Object-oriented language running on JVM.
export 'package:base_cod_view/languages/java.dart' show java;

/// Syntax highlighting mode for JavaScript programming language.
/// Scripting language for web browsers and servers.
export 'package:base_cod_view/languages/javascript.dart' show javascript;

/// Syntax highlighting mode for JBoss CLI (Command Line Interface).
/// WildFly/JBoss server configuration tool.
export 'package:base_cod_view/languages/jboss_cli.dart' show jbossCli;

/// Syntax highlighting mode for JSON (JavaScript Object Notation).
/// Lightweight data interchange format.
export 'package:base_cod_view/languages/json.dart' show json;

/// Syntax highlighting mode for Julia programming language.
/// High-performance language for scientific computing.
export 'package:base_cod_view/languages/julia.dart' show julia;

/// Syntax highlighting mode for Julia REPL (Read-Eval-Print Loop).
/// Interactive Julia shell syntax.
export 'package:base_cod_view/languages/julia_repl.dart' show juliaRepl;

/// Syntax highlighting mode for Kotlin programming language.
/// JVM language with Java interoperability.
export 'package:base_cod_view/languages/kotlin.dart' show kotlin;

/// Syntax highlighting mode for 1C:Enterprise configuration language.
/// Business automation platform scripting.
export 'package:base_cod_view/languages/lang_1c.dart' show lang1C;

/// Syntax highlighting mode for Languages enum and constants.
/// Enumeration of all supported programming languages.
export 'package:base_cod_view/languages/language/languages.dart' show Languages;

/// Syntax highlighting mode for Lasso web scripting language.
/// HTML embedded scripting language.
export 'package:base_cod_view/languages/lasso.dart' show lasso;

/// Syntax highlighting mode for LDIF (LDAP Data Interchange Format).
/// LDAP directory data format.
export 'package:base_cod_view/languages/ldif.dart' show ldif;

/// Syntax highlighting mode for Leaf template engine.
/// HTML template language.
export 'package:base_cod_view/languages/leaf.dart' show leaf;

/// Syntax highlighting mode for Less CSS preprocessor.
/// CSS extension with variables and mixins.
export 'package:base_cod_view/languages/less.dart' show less;

/// Syntax highlighting mode for Lisp programming language.
/// Family of functional programming languages.
export 'package:base_cod_view/languages/lisp.dart' show lisp;

/// Syntax highlighting mode for LiveCodeServer scripting.
/// RunRev LiveCode server-side scripting.
export 'package:base_cod_view/languages/livecodeserver.dart'
    show livecodeserver;

/// Syntax highlighting mode for LiveScript programming language.
/// Language that compiles to JavaScript.
export 'package:base_cod_view/languages/livescript.dart' show livescript;

/// Syntax highlighting mode for LLVM intermediate representation.
/// Low-level virtual machine assembly.
export 'package:base_cod_view/languages/llvm.dart' show llvm;

/// Syntax highlighting mode for LSL (Linden Scripting Language).
/// Second Life virtual world scripting.
export 'package:base_cod_view/languages/lsl.dart' show lsl;

/// Syntax highlighting mode for Lua programming language.
/// Lightweight scripting language for embedded systems.
export 'package:base_cod_view/languages/lua.dart' show lua;

/// Syntax highlighting mode for Makefile build format.
/// Unix build automation format.
export 'package:base_cod_view/languages/makefile.dart' show makefile;

/// Syntax highlighting mode for Markdown markup language.
/// Lightweight markup language for document formatting.
export 'package:base_cod_view/languages/markdown.dart' show markdown;

/// Syntax highlighting mode for Mathematica programming language.
/// Symbolic mathematics and computation system.
export 'package:base_cod_view/languages/mathematica.dart' show mathematica;

/// Syntax highlighting mode for MATLAB programming language.
/// Numerical computing and visualization language.
export 'package:base_cod_view/languages/matlab.dart' show matlab;

/// Syntax highlighting mode for Maxima computer algebra system.
/// Symbolic mathematics system.
export 'package:base_cod_view/languages/maxima.dart' show maxima;

/// Syntax highlighting mode for MEL (Maya Embedded Language).
/// Autodesk Maya scripting language.
export 'package:base_cod_view/languages/mel.dart' show mel;

/// Syntax highlighting mode for Mercury programming language.
/// Logic programming language with type system.
export 'package:base_cod_view/languages/mercury.dart' show mercury;

/// Syntax highlighting mode for MIPS assembly language.
/// Assembly for MIPS processors.
export 'package:base_cod_view/languages/mipsasm.dart' show mipsasm;

/// Syntax highlighting mode for Mizar (Mathematical verifier).
/// Formal mathematical language and proof checker.
export 'package:base_cod_view/languages/mizar.dart' show mizar;

/// Syntax highlighting mode for Mojolicious web framework.
/// Perl web development framework syntax.
export 'package:base_cod_view/languages/mojolicious.dart' show mojolicious;

/// Syntax highlighting mode for Monkey programming language.
/// Cross-platform game development language.
export 'package:base_cod_view/languages/monkey.dart' show monkey;

/// Syntax highlighting mode for MoonScript programming language.
/// Language that compiles to Lua.
export 'package:base_cod_view/languages/moonscript.dart' show moonscript;

/// Syntax highlighting mode for N1QL (Couchbase query language).
/// Query language for Couchbase NoSQL database.
export 'package:base_cod_view/languages/n1ql.dart' show n1Ql;

/// Syntax highlighting mode for Nginx web server configuration.
/// Web server configuration syntax.
export 'package:base_cod_view/languages/nginx.dart' show nginx;

/// Syntax highlighting mode for Nimrod programming language (now Nim).
/// Compiled language with Python-like syntax.
export 'package:base_cod_view/languages/nimrod.dart' show nimrod;

/// Syntax highlighting mode for Nix package manager language.
/// Declarative package management language.
export 'package:base_cod_view/languages/nix.dart' show nix;

/// Syntax highlighting mode for NSIS (Nullsoft Scriptable Install System).
/// Windows installer script language.
export 'package:base_cod_view/languages/nsis.dart' show nsis;

/// Syntax highlighting mode for Objective-C programming language.
/// Object-oriented C extension for Apple platforms.
export 'package:base_cod_view/languages/objectivec.dart' show objectivec;

/// Syntax highlighting mode for OCaml programming language.
/// Functional language with strong type system.
export 'package:base_cod_view/languages/ocaml.dart' show ocaml;

/// Syntax highlighting mode for OpenSCAD scripting language.
/// 3D CAD modeling script language.
export 'package:base_cod_view/languages/openscad.dart' show openscad;

/// Syntax highlighting mode for Oxygene programming language.
/// .NET Object Pascal language.
export 'package:base_cod_view/languages/oxygene.dart' show oxygene;

/// Syntax highlighting mode for Parser3 templating language.
/// Web templating engine syntax.
export 'package:base_cod_view/languages/parser3.dart' show parser3;

/// Syntax highlighting mode for Perl programming language.
/// Dynamic general-purpose programming language.
export 'package:base_cod_view/languages/perl.dart' show perl;

/// Syntax highlighting mode for PF (OpenBSD Packet Filter).
/// Firewall configuration rule language.
export 'package:base_cod_view/languages/pf.dart' show pf;

/// Syntax highlighting mode for PostgreSQL query language.
/// Advanced open-source relational database query language.
export 'package:base_cod_view/languages/pgsql.dart' show pgsql;

/// Syntax highlighting mode for PHP programming language.
/// Server-side scripting language for web development.
export 'package:base_cod_view/languages/php.dart' show php;

/// Syntax highlighting mode for Plaintext (no highlighting).
/// Plain unformatted text without special syntax highlighting.
export 'package:base_cod_view/languages/plaintext.dart' show plaintext;

/// Syntax highlighting mode for Pony programming language.
/// Actor-model language with strong type system.
export 'package:base_cod_view/languages/pony.dart' show pony;

/// Syntax highlighting mode for PowerShell scripting language.
/// Windows command-line shell and scripting environment.
export 'package:base_cod_view/languages/powershell.dart' show powershell;

/// Syntax highlighting mode for Processing programming language.
/// Visual programming language for creative coding.
export 'package:base_cod_view/languages/processing.dart' show processing;

/// Syntax highlighting mode for Profile data format.
/// Performance profiling data format.
export 'package:base_cod_view/languages/profile.dart' show profile;

/// Syntax highlighting mode for Prolog logic programming language.
/// Declarative logic programming language.
export 'package:base_cod_view/languages/prolog.dart' show prolog;

/// Syntax highlighting mode for Java Properties file format.
/// Configuration file key-value pair format.
export 'package:base_cod_view/languages/properties.dart' show properties;

/// Syntax highlighting mode for Protocol Buffers (protobuf).
/// Google's data serialization format.
export 'package:base_cod_view/languages/protobuf.dart' show protobuf;

/// Syntax highlighting mode for Puppet infrastructure automation.
/// Configuration management language.
export 'package:base_cod_view/languages/puppet.dart' show puppet;

/// Syntax highlighting mode for PureBasic programming language.
/// BASIC-like language for rapid development.
export 'package:base_cod_view/languages/purebasic.dart' show purebasic;

/// Syntax highlighting mode for Python programming language.
/// Interpreted, high-level programming language.
export 'package:base_cod_view/languages/python.dart' show python;

/// Syntax highlighting mode for Q programming language (kdb+).
/// Time-series database query language.
export 'package:base_cod_view/languages/q.dart' show q;

/// Syntax highlighting mode for QML (Qt Meta Language).
/// Qt declarative UI language.
export 'package:base_cod_view/languages/qml.dart' show qml;

/// Syntax highlighting mode for R statistical programming language.
/// Language for statistical computing and graphics.
export 'package:base_cod_view/languages/r.dart' show r;

/// Syntax highlighting mode for ReasonML programming language.
/// Functional language compiling to JavaScript and OCaml.
export 'package:base_cod_view/languages/reasonml.dart' show reasonml;

/// Syntax highlighting mode for RIB (RenderMan Interface Bytestream).
/// 3D rendering script format.
export 'package:base_cod_view/languages/rib.dart' show rib;

/// Syntax highlighting mode for Roboconf configuration language.
/// Infrastructure orchestration language.
export 'package:base_cod_view/languages/roboconf.dart' show roboconf;

/// Syntax highlighting mode for RouterOS scripting language.
/// MikroTik RouterOS configuration language.
export 'package:base_cod_view/languages/routeros.dart' show routeros;

/// Syntax highlighting mode for RSL (RenderMan Shading Language).
/// 3D shader programming language.
export 'package:base_cod_view/languages/rsl.dart' show rsl;

/// Syntax highlighting mode for Ruby programming language.
/// Dynamic, interpreted general-purpose programming language.
export 'package:base_cod_view/languages/ruby.dart' show ruby;

/// Syntax highlighting mode for RulesLanguage (OPS5-style).
/// Expert systems rule definition language.
export 'package:base_cod_view/languages/ruleslanguage.dart' show ruleslanguage;

/// Syntax highlighting mode for Rust programming language.
/// Systems programming language with memory safety.
export 'package:base_cod_view/languages/rust.dart' show rust;

/// Syntax highlighting mode for SAS (Statistical Analysis System).
/// Statistical software scripting language.
export 'package:base_cod_view/languages/sas.dart' show sas;

/// Syntax highlighting mode for Scala programming language.
/// JVM language combining object-oriented and functional programming.
export 'package:base_cod_view/languages/scala.dart' show scala;

/// Syntax highlighting mode for Scheme programming language.
/// Functional dialect of Lisp.
export 'package:base_cod_view/languages/scheme.dart' show scheme;

/// Syntax highlighting mode for Scilab programming language.
/// Scientific computing software with scripting language.
export 'package:base_cod_view/languages/scilab.dart' show scilab;

/// Syntax highlighting mode for SCSS (Sassy CSS) preprocessor.
/// CSS extension with nested rules and variables.
export 'package:base_cod_view/languages/scss.dart' show scss;

/// Syntax highlighting mode for Shell script (sh/bash).
/// Unix shell scripting syntax.
export 'package:base_cod_view/languages/shell.dart' show shell;

/// Syntax highlighting mode for Smali assembly language.
/// Android DEX bytecode assembly.
export 'package:base_cod_view/languages/smali.dart' show smali;

/// Syntax highlighting mode for Smalltalk programming language.
/// Object-oriented dynamically typed programming language.
export 'package:base_cod_view/languages/smalltalk.dart' show smalltalk;

/// Syntax highlighting mode for SML (Standard ML) programming language.
/// Functional language with strong static typing.
export 'package:base_cod_view/languages/sml.dart' show sml;

/// Syntax highlighting mode for Solidity programming language.
/// Smart contract language for Ethereum blockchain.
export 'package:base_cod_view/languages/solidity.dart' show solidity;

/// Syntax highlighting mode for SQF (SQF script) mission scripting.
/// ArmA game series mission scripting language.
export 'package:base_cod_view/languages/sqf.dart' show sqf;

/// Syntax highlighting mode for SQL (Structured Query Language).
/// Language for database queries and management.
export 'package:base_cod_view/languages/sql.dart' show sql;

/// Syntax highlighting mode for Stan probabilistic programming language.
/// Probabilistic programming language for statistical modeling.
export 'package:base_cod_view/languages/stan.dart' show stan;

/// Syntax highlighting mode for Stata statistical software.
/// Statistical data analysis scripting language.
export 'package:base_cod_view/languages/stata.dart' show stata;

/// Syntax highlighting mode for STEP 21 (STEP-NC).
/// Manufacturing data format and specification.
export 'package:base_cod_view/languages/step21.dart' show step21;

/// Syntax highlighting mode for Stylus CSS preprocessor.
/// CSS preprocessor with indented syntax.
export 'package:base_cod_view/languages/stylus.dart' show stylus;

/// Syntax highlighting mode for SubUnit test format.
/// Distributed testing protocol format.
export 'package:base_cod_view/languages/subunit.dart' show subunit;

/// Syntax highlighting mode for Swift programming language.
/// Apple's modern programming language for iOS and macOS.
export 'package:base_cod_view/languages/swift.dart' show swift;

/// Syntax highlighting mode for Tagger Script language.
/// Entity tagger scripting language.
export 'package:base_cod_view/languages/taggerscript.dart' show taggerscript;

/// Syntax highlighting mode for TAP (Test Anything Protocol).
/// Test output format for test results.
export 'package:base_cod_view/languages/tap.dart' show tap;

/// Syntax highlighting mode for Tcl (Tool Command Language).
/// Dynamic scripting language for system administration.
export 'package:base_cod_view/languages/tcl.dart' show tcl;

/// Syntax highlighting mode for TeX typesetting language.
/// Document preparation and typesetting language.
export 'package:base_cod_view/languages/tex.dart' show tex;

/// Syntax highlighting mode for Thrift data serialization.
/// Interface definition language for cross-language services.
export 'package:base_cod_view/languages/thrift.dart' show thrift;

/// Syntax highlighting mode for TwinCAT programming language.
/// Beckhoff industrial automation language.
export 'package:base_cod_view/languages/tp.dart' show tp;

/// Syntax highlighting mode for Twig templating engine.
/// Flexible templating language for PHP.
export 'package:base_cod_view/languages/twig.dart' show twig;

/// Syntax highlighting mode for TypeScript programming language.
/// JavaScript with static type checking and compilation.
export 'package:base_cod_view/languages/typescript.dart' show typescript;

/// Syntax highlighting mode for Vala programming language.
/// Object-oriented language compiling to C.
export 'package:base_cod_view/languages/vala.dart' show vala;

/// Syntax highlighting mode for VB.NET programming language.
/// Visual Basic for .NET platform.
export 'package:base_cod_view/languages/vbnet.dart' show vbnet;

/// Syntax highlighting mode for VBScript scripting language.
/// Visual Basic scripting for Windows.
export 'package:base_cod_view/languages/vbscript.dart' show vbscript;

/// Syntax highlighting mode for VBScript in HTML.
/// VBScript embedded in HTML pages.
export 'package:base_cod_view/languages/vbscript_html.dart' show vbscriptHtml;

/// Syntax highlighting mode for Verilog hardware description language.
/// Digital circuit design language.
export 'package:base_cod_view/languages/verilog.dart' show verilog;

/// Syntax highlighting mode for VHDL hardware description language.
/// High-level hardware design language.
export 'package:base_cod_view/languages/vhdl.dart' show vhdl;

/// Syntax highlighting mode for Vim scripting language.
/// VimScript for Vim text editor extensions.
export 'package:base_cod_view/languages/vim.dart' show vim;

/// Syntax highlighting mode for Vue.js template syntax.
/// Progressive JavaScript framework template syntax.
export 'package:base_cod_view/languages/vue.dart' show vue;

/// Syntax highlighting mode for x86 assembly language.
/// Intel/AT&T assembly language for x86 processors.
export 'package:base_cod_view/languages/x86asm.dart' show x86Asm;

/// Syntax highlighting mode for XL programming language.
/// Extensible language with concept programming.
export 'package:base_cod_view/languages/xl.dart' show xl;

/// Syntax highlighting mode for XML (Extensible Markup Language).
/// Markup language for structured data representation.
export 'package:base_cod_view/languages/xml.dart' show xml;

/// Syntax highlighting mode for XQuery query language.
/// Query language for XML documents and databases.
export 'package:base_cod_view/languages/xquery.dart' show xquery;

/// Syntax highlighting mode for YAML data serialization format.
/// Human-friendly data serialization format.
export 'package:base_cod_view/languages/yaml.dart' show yaml;

/// Syntax highlighting mode for Zephir programming language.
/// High-level language compiling to C and PHP extensions.
export 'package:base_cod_view/languages/zephir.dart' show zephir;
