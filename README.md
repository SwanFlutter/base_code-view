
## Base Code View

A Flutter package for syntax highlighting with native text selection support.

### Installation

Add the package to your `pubspec.yaml` dependencies:

```yaml
dependencies:
  base_cod_view: ^0.0.2
```

Then install:

```bash
flutter pub get
```

Import where needed:

```dart
import 'package:base_cod_view/base_code_view.dart';
```

### Features

- ✅ Syntax highlighting for 180+ programming languages
- ✅ Native Flutter text selection with customizable colors
- ✅ Convert to `TextSpan` for use with `SelectableText.rich`
- ✅ Export to HTML with CSS selection styles
- ✅ Dark theme support with VS Code colors

### Usage

#### Flutter Widget (Recommended)

```dart
import 'package:base_cod_view/base_code_view.dart';
import 'package:flutter/material.dart';

class CodeViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final highlight = Highlight();
    highlight.registerLanguage(Languages.dart, dart);
    
    final source = '''
void main() {
  print('Hello, World!');
}
''';
    
    final result = highlight.parse(
      source: source,
      language: Languages.dart,
    );
    
    return SelectableText.rich(
      result.toTextSpan(
        baseStyle: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
          color: Color(0xFFd4d4d4),
        ),
      ),
    );
  }
}
```

#### HTML Export

```dart
final result = highlight.parse(
  source: source,
  language: Languages.dart,
);

// Get HTML with selection color support
final htmlWithStyles = result.toHtmlWithStyles(
  selectionColor: 'rgba(100, 150, 200, 0.3)',
  selectionTextColor: 'inherit',
);

// Or get just the HTML and CSS separately
final html = result.toHtml();
final css = result.getSelectionCss(
  selectionColor: 'rgba(100, 150, 200, 0.3)',
);
```

### Selection Color Support

The package includes multiple ways to handle text selection:

- `toTextSpan()` - Converts to Flutter TextSpan with native selection (recommended)
- `toHtmlWithStyles()` - Returns HTML with inline CSS including selection styles
- `getSelectionCss()` - Returns just the CSS for selection styling
- `toHtml()` - Returns just the HTML (original behavior)

### Customizing Selection Color

For Flutter widgets, use `TextSelectionTheme`:

```dart
MaterialApp(
  theme: ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Color(0x6664AAFF), // Blue with opacity
      selectionHandleColor: Color(0xFF64AAFF),
    ),
  ),
  // ...
)
```

### Supported Languages

Dart, JavaScript, Python, Java, C++, C#, Go, Rust, PHP, Ruby, Swift, Kotlin, TypeScript, and 170+ more!
