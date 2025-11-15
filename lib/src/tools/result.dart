import 'package:flutter/material.dart';

import '../../languages/language/languages.dart';
import 'mode.dart';
import 'node.dart';

class Result {
  int? relevance;
  List<Node>? nodes;
  Languages? language;
  Mode? top;
  Result? secondBest;

  Result({
    this.relevance,
    this.nodes,
    this.language,
    this.top,
    this.secondBest,
  });

  String _escape(String value) {
    return value
        .replaceAll(RegExp(r'&'), '&amp;')
        .replaceAll(RegExp(r'<'), '&lt;')
        .replaceAll(RegExp(r'>'), '&gt;');
  }

  /// Returns CSS styles for code highlighting including selection color
  String getSelectionCss({
    String selectionColor = 'rgba(100, 150, 200, 0.3)',
    String selectionTextColor = 'inherit',
  }) {
    return '''
::selection {
  background-color: $selectionColor;
  color: $selectionTextColor;
}

::-moz-selection {
  background-color: $selectionColor;
  color: $selectionTextColor;
}
''';
  }

  String toHtml() {
    var str = '';

    void traverse(Node node) {
      final shouldAddSpan = node.className != null &&
          ((node.value != null && node.value!.isNotEmpty) ||
              (node.children != null && node.children!.isNotEmpty));

      if (shouldAddSpan) {
        var prefix = node.noPrefix ? '' : 'hljs-';
        str += '<span class="${prefix + node.className!}">';
      }

      if (node.value != null) {
        str += _escape(node.value!);
      } else if (node.children != null) {
        node.children!.forEach(traverse);
      }

      if (shouldAddSpan) {
        str += '</span>';
      }
    }

    nodes!.forEach(traverse);
    return str;
  }

  /// Returns complete HTML with inline CSS including selection styles
  String toHtmlWithStyles({
    String selectionColor = 'rgba(100, 150, 200, 0.3)',
    String selectionTextColor = 'inherit',
  }) {
    return '''
<style>
${getSelectionCss(selectionColor: selectionColor, selectionTextColor: selectionTextColor)}
</style>
${toHtml()}
''';
  }

  /// Converts the highlighted code to Flutter TextSpan for use with SelectableText.rich
  /// This allows native text selection with Flutter's selection color
  TextSpan toTextSpan({
    TextStyle? baseStyle,
    Map<String, TextStyle>? customStyles,
  }) {
    final defaultBaseStyle = baseStyle ??
        TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
          color: Color(0xFFd4d4d4),
        );

    final defaultStyles = {
      'keyword': TextStyle(color: Color(0xFF569cd6)),
      'string': TextStyle(color: Color(0xFFce9178)),
      'number': TextStyle(color: Color(0xFFb5cea8)),
      'comment':
          TextStyle(color: Color(0xFF6a9955), fontStyle: FontStyle.italic),
      'function': TextStyle(color: Color(0xFFdcdcaa)),
      'class': TextStyle(color: Color(0xFF4ec9b0)),
      'title': TextStyle(color: Color(0xFFdcdcaa)),
      'params': TextStyle(color: Color(0xFF9cdcfe)),
      'built_in': TextStyle(color: Color(0xFF4ec9b0)),
      'built-in': TextStyle(color: Color(0xFF4ec9b0)),
      'literal': TextStyle(color: Color(0xFF569cd6)),
      'type': TextStyle(color: Color(0xFF4ec9b0)),
      'attr': TextStyle(color: Color(0xFF9cdcfe)),
      'variable': TextStyle(color: Color(0xFF9cdcfe)),
      'property': TextStyle(color: Color(0xFF9cdcfe)),
      'meta': TextStyle(color: Color(0xFF569cd6)),
      'tag': TextStyle(color: Color(0xFF569cd6)),
      'name': TextStyle(color: Color(0xFF4ec9b0)),
      'builtin-name': TextStyle(color: Color(0xFF4ec9b0)),
      'selector-tag': TextStyle(color: Color(0xFF569cd6)),
      'selector-id': TextStyle(color: Color(0xFF9cdcfe)),
      'selector-class': TextStyle(color: Color(0xFFd7ba7d)),
      'selector-attr': TextStyle(color: Color(0xFF9cdcfe)),
      'selector-pseudo': TextStyle(color: Color(0xFF569cd6)),
      'addition': TextStyle(color: Color(0xFF4ec9b0)),
      'deletion': TextStyle(color: Color(0xFFf44747)),
      'regexp': TextStyle(color: Color(0xFFd16969)),
      'symbol': TextStyle(color: Color(0xFF569cd6)),
      'operator': TextStyle(color: Color(0xFFd4d4d4)),
      'punctuation': TextStyle(color: Color(0xFFd4d4d4)),
    };

    final styles = {...defaultStyles, ...?customStyles};

    List<InlineSpan> traverse(Node node) {
      final List<InlineSpan> spans = [];

      if (node.value != null) {
        TextStyle? highlightStyle;
        if (node.className != null) {
          // Remove 'hljs-' prefix if exists
          var className = node.className!.replaceFirst('hljs-', '');

          // Try exact match first
          highlightStyle = styles[className];

          // If no match and contains underscore, try with hyphens
          if (highlightStyle == null && className.contains('_')) {
            className = className.replaceAll('_', '-');
            highlightStyle = styles[className];
          }
        }
        
        // Merge highlight style with base style to ensure proper color inheritance
        // If no highlight style, just use base style colors
        final effectiveStyle = highlightStyle != null
            ? defaultBaseStyle.merge(highlightStyle)
            : defaultBaseStyle;
            
        spans.add(TextSpan(
          text: node.value,
          style: effectiveStyle,
        ));
      } else if (node.children != null) {
        for (var child in node.children!) {
          spans.addAll(traverse(child));
        }
      }

      return spans;
    }

    final List<InlineSpan> allSpans = [];
    for (var node in nodes!) {
      allSpans.addAll(traverse(node));
    }

    return TextSpan(
      children: allSpans,
    );
  }
}
