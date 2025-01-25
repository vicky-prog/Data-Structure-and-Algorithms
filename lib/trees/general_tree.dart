class TreeNode<T>{
  T? value;
  List<TreeNode<T>> children;
  TreeNode(this.value):children = [];

  @override
  String toString() {
    return value.toString();
  }
}


class GeneralTree<T> {
  TreeNode<T>? root;

   GeneralTree(); // Default constructor with no arguments
   
  // Set the root of the tree
  void setRoot(T value) {
    root = TreeNode(value);
  }

  addChild(TreeNode<T> parent, T childValue){
    TreeNode<T> child = TreeNode(childValue);
    parent.children.add(child);
  }

   // Print the tree structure recursively
  void printTree(TreeNode<T>? node, [String prefix = ""]) {
    if (node == null) return;

    print("$prefix${node.value}");
    for (TreeNode<T> child in node.children) {
      printTree(child, "$prefix  ");
    }
  }

   // Search the tree and return the path to the target node
  List<TreeNode<T>> searchPath(TreeNode<T>? node, T target) {
    if (node == null) return [];

    // If the node's value matches the target, return this node as part of the path
    if (node.value == target) {
      return [node];
    }

    // Traverse the children of the node
    for (TreeNode<T> child in node.children) {
      List<TreeNode<T>> path = searchPath(child, target);
      if (path.isNotEmpty) {
        // If the path is found, add the current node to the path
        path.insert(0, node);
        return path;
      }
    }

    // Return an empty list if the node is not found
    return [];
  }

// Print the path from root to the target node with indentation
  void printPath(T target, [String prefix = ""]) {
    List<TreeNode<T>> path = searchPath(root, target);
    if (path.isNotEmpty) {
      print("Path to '$target':");
      for (TreeNode<T> node in path) {
        print("$prefix${node.value}");
        // Add additional prefix for child nodes to show the hierarchy
        prefix += "  ";  // Indentation increases with each level
      }
    } else {
      print("Node '$target' not found.");
    }
  }
}