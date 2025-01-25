import 'dart:developer';
import 'dart:isolate';
import 'package:dsa/stack.dart' as dsa;
import 'package:dsa/trees/general_tree.dart';

void main(List<String> arguments) {
  // print('Hello world: ${dsa.isPalindrome("xjbcx bxbcx")}!');
  // print(findinMultiLstValue(0));
  //createIsolate();
  generalTrexxExample();
}

List<int> _numbers = [2, -6, 89, 8, 9, 5];

findMax(List<int> numbers) {
  if (numbers.isEmpty) {
    return null;
  }
  int max = numbers[0];
  for (var i in numbers) {
    if (i > max) {
      max = i;
    }
  }
  return max;
}

//
List<int> list1 = [1, 2, 3];
List<int> list2 = [4, 5, 6];
List<int> list3 = [7, 8, 9];
findinMultiLstValue(int target) {
  for (var list in [list1, list2, list3]) {
    // ignore: unrelated_type_equality_checks
    if (list.contains(target)) {
      return list;
    }
  }
  return null;
}





Future createIsolate() async {
 /// Where I listen to the message from Mike's port
 ReceivePort myReceivePort = ReceivePort();

 /// Spawn an isolate, passing my receivePort sendPort
 Isolate.spawn<SendPort>(heavyComputationTask, myReceivePort.sendPort);

 /// Mike sends a senderPort for me to enable me to send him a message via his sendPort.
 /// I receive Mike's senderPort via my receivePort
 SendPort mikeSendPort = await myReceivePort.first;

 /// I set up another receivePort to receive Mike's response.
 ReceivePort mikeResponseReceivePort = ReceivePort();

 /// I send Mike a message using mikeSendPort. I send him a list,
 /// which includes my message, preferred type of coffee, and finally
 /// a sendPort from mikeResponseReceivePort that enables Mike to send a message back to me.
 mikeSendPort.send([
   "Mike, I'm taking an Espresso coffee",
   "Espresso",
   mikeResponseReceivePort.sendPort
 ]);

 /// I get Mike's response by listening to mikeResponseReceivePort
 final mikeResponse = await mikeResponseReceivePort.first;
 print("MIKE'S RESPONSE: ==== $mikeResponse");
}

void heavyComputationTask(SendPort mySendPort) async {
 /// Set up a receiver port for Mike
 ReceivePort mikeReceivePort = ReceivePort();

 /// Send Mike receivePort sendPort via mySendPort
 mySendPort.send(mikeReceivePort.sendPort);

 /// Listen to messages sent to Mike's receive port
 await for (var message in mikeReceivePort) {
   if (message is List) {
     final myMessage = message[0];
     final coffeeType = message[1];
     print(myMessage);

     /// Get Mike's response sendPort
     final SendPort mikeResponseSendPort = message[2];

     /// Send Mike's response via mikeResponseSendPort
     mikeResponseSendPort.send("You're taking $coffeeType, and I'm taking Latte");
   }
 }
}

generalTrexxExample(){
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
}

