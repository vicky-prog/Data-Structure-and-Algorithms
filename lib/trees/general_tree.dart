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
}