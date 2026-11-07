/// Represents a node in the syntax-highlighted code tree.
///
/// Each node contains styled text segments and can have child nodes,
/// forming a tree structure that represents the highlighted code.
/// Nodes with a [className] are typically wrapped in HTML spans with
/// the appropriate CSS class for styling.
///
/// Properties:
///   - [className]: CSS class name for styling (e.g., 'keyword', 'string')
///   - [value]: The actual text content (if it's a leaf node)
///   - [children]: Child nodes (if this node contains other nodes)
///   - [noPrefix]: Whether to skip the 'hljs-' prefix when generating HTML
class Node {
  /// CSS class name to apply to this node's text.
  /// Used for syntax highlighting styling.
  String? className;

  /// The text content of this node (only set for leaf nodes).
  String? value;

  /// Child nodes of this node (only set for branch nodes).
  List<Node>? children;

  /// Whether to omit the 'hljs-' prefix when converting to HTML.
  bool noPrefix;

  Node({this.className, this.value, this.children, this.noPrefix = false});
}
