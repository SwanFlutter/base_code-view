import 'package:base_cod_view/base_code_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base Code View Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Color(
            0x6664AAFF,
          ), // Blue selection color with opacity
          selectionHandleColor: Color(0xFF64AAFF),
        ),
      ),
      home: const CodeViewDemo(),
    );
  }
}

class CodeViewDemo extends StatefulWidget {
  const CodeViewDemo({super.key});

  @override
  State<CodeViewDemo> createState() => _CodeViewDemoState();
}

class _CodeViewDemoState extends State<CodeViewDemo> {
  String _selectedLanguage = 'Dart';
  TextSpan _codeTextSpan = const TextSpan();

  final Map<String, String> _codeExamples = {
    'Dart': '''void main() {
  // This is a comment
  print('Hello, World!');
  
  int sum = calculateSum(10, 20);
  print('Sum: \$sum');
  
  List<String> items = ['Apple', 'Banana', 'Orange'];
  for (var item in items) {
    print(item);
  }
}

int calculateSum(int a, int b) {
  return a + b;
}

class Person {
  final String name;
  final int age;
  
  Person(this.name, this.age);
  
  void introduce() {
    print('Hi, I am \$name and I am \$age years old.');
  }
}''',
    'JavaScript': '''function greet(name) {
  // This is a comment
  console.log(`Hello, \${name}!`);
}

const numbers = [1, 2, 3, 4, 5];
const doubled = numbers.map(n => n * 2);

class User {
  constructor(name, email) {
    this.name = name;
    this.email = email;
  }
  
  getInfo() {
    return `\${this.name} <\${this.email}>`;
  }
}''',
    'Python': '''def main():
    # This is a comment
    print("Hello, World!")
    
    numbers = [1, 2, 3, 4, 5]
    squared = [n ** 2 for n in numbers]
    
    for num in squared:
        print(num)

class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def introduce(self):
        print(f"Hi, I am {self.name}")

if __name__ == "__main__":
    main()''',
  };

  @override
  void initState() {
    super.initState();
    _updateCode();
  }

  void _updateCode() {
    final highlight = Highlight();

    Languages language;
    switch (_selectedLanguage) {
      case 'Dart':
        highlight.registerLanguage(Languages.dart, dart);
        language = Languages.dart;
        break;
      case 'JavaScript':
        highlight.registerLanguage(Languages.javascript, javascript);
        language = Languages.javascript;
        break;
      case 'Python':
        highlight.registerLanguage(Languages.python, python);
        language = Languages.python;
        break;
      default:
        highlight.registerLanguage(Languages.dart, dart);
        language = Languages.dart;
    }

    final result = highlight.parse(
      source: _codeExamples[_selectedLanguage]!,
      language: language,
    );

    setState(() {
      _codeTextSpan = result.toTextSpan(
        baseStyle: const TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
          color: Color(0xFFd4d4d4),
          height: 1.5,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Base Code View - Selection Test'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          PopupMenuButton<String>(
            initialValue: _selectedLanguage,
            onSelected: (String value) {
              setState(() {
                _selectedLanguage = value;
                _updateCode();
              });
            },
            itemBuilder: (BuildContext context) {
              return _codeExamples.keys.map((String language) {
                return PopupMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(_selectedLanguage),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue.shade50,
            child: const Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Select text in the code below - you will see a BLUE selection color!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFF1e1e1e),
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: SelectableText.rich(
                  _codeTextSpan,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Clipboard.setData(
            ClipboardData(text: _codeExamples[_selectedLanguage]!),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Code copied to clipboard!')),
          );
        },
        tooltip: 'Copy Code',
        child: const Icon(Icons.copy),
      ),
    );
  }
}
