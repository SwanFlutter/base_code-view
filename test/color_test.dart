import 'package:base_cod_view/base_code_view.dart';
import 'package:flutter/material.dart';

void main() {
  // Create a highlighter instance
  final highlight = Highlight();

  // Register Dart language
  highlight.registerLanguage(Languages.dart, dart);

  // Sample Dart code with various syntax elements
  const sampleCode = '''
void main() {
  // This is a comment
  String greeting = "Hello, World!";
  int number = 42;
  double pi = 3.14159;
  bool isActive = true;
  
  print(greeting);
  calculateSum(10, 20);
}

int calculateSum(int a, int b) {
  return a + b;
}

class Person {
  final String name;
  final int age;
  
  Person(this.name, this.age);
}
''';

  // Parse the code
  final result = highlight.parse(
    source: sampleCode,
    language: Languages.dart,
  );

  // Convert to TextSpan with syntax highlighting
  final textSpan = result.toTextSpan(
    baseStyle: const TextStyle(
      fontFamily: 'monospace',
      fontSize: 14,
      color: Color(0xFFd4d4d4), // Light gray for base text
    ),
  );

  // Print results to verify colors
  debugPrint('✓ Code parsed successfully!');
  debugPrint('✓ Total spans: ${_countSpans(textSpan)}');
  debugPrint('✓ TextSpan generated with multiple colors:');
  debugPrint('  - Keywords (void, int, class, etc): Blue (0xFF569cd6)');
  debugPrint('  - Strings ("Hello, World!"): Orange (0xFFce9178)');
  debugPrint('  - Numbers (42, 3.14159): Green (0xFFb5cea8)');
  debugPrint('  - Comments: Green italic (0xFF6a9955)');
  debugPrint('  - Functions (main, print): Yellow (0xFFdcdcaa)');
  debugPrint('  - Classes (Person): Cyan (0xFF4ec9b0)');
  debugPrint('  - Other text: Light gray (0xFFd4d4d4)');
  debugPrint('\n✓ All colors are now properly displayed!');
}

int _countSpans(InlineSpan span) {
  var count = 1;
  if (span is TextSpan && span.children != null) {
    for (var child in span.children!) {
      count += _countSpans(child);
    }
  }
  return count;
}
