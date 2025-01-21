// Linked List Overview
// A linked list is a linear data structure where elements are stored in nodes. Each node contains:

// Data: The actual value.
// Pointer: A reference (or link) to the next node in the list.

// Types of Linked Lists
// Singly Linked List (SLL):
// Each node points to the next node.
// The last node's pointer is null.
// Doubly Linked List (DLL):
// Each node has two pointers: one pointing to the next node and one to the previous node.
// Circular Linked List (CLL):
// The last node points back to the first node, forming a circular structure.

// Why Use a Linked List?
// Dynamic size: Unlike arrays, linked lists don't require a fixed size.
// Easier insertion and deletion: Adding/removing elements is easier as no shifting is required.

// 1: Singly Linked List Implementation in Dart
// Node Class
//  Each Nodes store the data and reference for next node



// class Node<E extends LinkedListEntry<E>> {
//   T? data; // Data stored in the node
//   Node<T>? next; // Pointing to the next node

//   Node(this.data);
// }





// class LinkedList<T> {
//   Node<T>? head; // Points the first node of the list

//  // Add a Node end of the list
//   void append(T data) {
//     Node<T> newNode = Node(data);

//     // ignore: prefer_conditional_assignment
//     if (head == null) {
//       head = newNode; // If the list is empty, make this the head
//     } else {
//       Node<T>? current = head;

//       //Traverse to the end of list
//       while (current?.next != null) {
//         current = current?.next;
//       }
//       current?.next = newNode; // Add the new node at the end
//     }
//   }
// }

class Node<E> {
  E data;
  Node<E>? next;

  Node(this.data);
}

class LinkedList<E> {
  Node<E>? head;

  void append(E data) {
    Node<E> newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node<E>? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  void display() {
    Node<E>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList<int> list = LinkedList<int>();
  list.append(10);
  list.append(20);
  list.append(30);

  print('Linked List Elements:');
  list.display();
}



