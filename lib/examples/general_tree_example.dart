import 'package:dsa/examples/employee.dart';
import 'package:dsa/trees/general_tree.dart';



generalTreeExample(){
  GeneralTree<String> tree = GeneralTree<String>();
  // Set the root of the tree
  tree.setRoot("CEO");

  // Add children to the root
  TreeNode<String> root = tree.root!;
  tree.addChild(root, "VP1");
  tree.addChild(root, "VP2");

  // Add children to VP1
  TreeNode<String> vp1 = root.children[0];
  tree.addChild(vp1, "Manager1");
  tree.addChild(vp1, "Manager2");

  // Add children to VP2
  TreeNode<String> vp2 = root.children[1];
  tree.addChild(vp2, "Manager3");

   // Add more children to Manager1
  TreeNode<String> manager1 = vp1.children[0];
  tree.addChild(manager1, "Team Lead 1");

  // Print the tree structure
  print("Tree Structure:");
  tree.printTree(tree.root);

   // Now, let's search for "Team Lead 1" and print the path
  tree.printPath("Team Lead 1");
}



void generalTreeExample2() {
  // Create a general tree with Employee objects
  GeneralTree<Employee> tree = GeneralTree<Employee>();

  // Create employee objects
  Employee ceo = Employee(name: "John Doe", position: "CEO", employeeId: 1);
  Employee vp1 = Employee(name: "Jane Smith", position: "VP1", employeeId: 2);
  Employee vp2 = Employee(name: "Jim Brown", position: "VP2", employeeId: 3);
  Employee manager1 = Employee(name: "Sara White", position: "Manager1", employeeId: 4);
  Employee teamLead1 = Employee(name: "Team Lead 1", position: "Team Lead", employeeId: 5);

  // Set the root of the tree
  tree.setRoot(ceo);

  // Add children to the root
  TreeNode<Employee> root = tree.root!;
  tree.addChild(root, vp1);
  tree.addChild(root, vp2);

  // Add children to VP1
  TreeNode<Employee> vp1Node = root.children[0];
  tree.addChild(vp1Node, manager1);

  // Add children to Manager1
  TreeNode<Employee> manager1Node = vp1Node.children[0];
  tree.addChild(manager1Node, teamLead1);

  // Now, let's search for "Team Lead 1" by their employeeId
  tree.printPath(manager1);  // This will use the overridden == operator for comparison
}
