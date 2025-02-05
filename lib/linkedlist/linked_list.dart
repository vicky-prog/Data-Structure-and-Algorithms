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



class Node<E> {
  E data;
  Node<E>? next;

  Node(this.data);
}

class SinglyLinkedList<E> {
  Node<E>? head;

  bool get isEmpty => head == null;

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

   remove(E data) {
    if (isEmpty) {
      return;
    }

    // If the head contains the data to be removed
    while (head != null && head!.data == data) {
      head = head!.next; // Move the head to the next node
    }

    // Use a variable to traverse the list
    var current = head;

    while (current?.next != null) {
      // If the next node contains the data, skip it
      if (current!.next!.data == data) {
        current.next = current.next!.next;
      } else {
        // Otherwise, move to the next node
        current = current.next;
      }
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
  SinglyLinkedList<int> list = SinglyLinkedList<int>();
  list.append(10);
  list.append(20);
  list.append(30);

  print('Linked List Elements:');
  list.display();
}
