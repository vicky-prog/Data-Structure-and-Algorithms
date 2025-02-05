

import 'package:dsa/linkedlist/linked_list.dart';
import 'package:test/test.dart';


void main() {
  group('LinkedList Append Tests', () {
    test('should append to an empty list', () {
      SinglyLinkedList<int> linkedList = SinglyLinkedList<int>();
      linkedList.append(10);

      expect(linkedList.head?.data, 10);
      expect(linkedList.head?.next, null);
    });

    test('should append to a list with one element', () {
      SinglyLinkedList<int> linkedList = SinglyLinkedList<int>();
      linkedList.append(10);
      linkedList.append(20);

      expect(linkedList.head?.data, 10);
      expect(linkedList.head?.next?.data, 20);
      expect(linkedList.head?.next?.next, null);
    });

    test('should append multiple elements', () {
      SinglyLinkedList<int> linkedList = SinglyLinkedList<int>();
      linkedList.append(10);
      linkedList.append(20);
      linkedList.append(30);

      Node<int>? current = linkedList.head;

      expect(current?.data, 10);
      current = current?.next;

      expect(current?.data, 20);
      current = current?.next;

      expect(current?.data, 30);
      expect(current?.next, null);
    });
  });




  group('LinkedList remove method', () {
    test('Remove from empty list', () {
      final list = SinglyLinkedList<int>();
      list.remove(5);
      expect(list.toList(), []);
    });

    test('Remove head element', () {
      final list = SinglyLinkedList<int>();
      list.append(5);
      list.append(10);
      list.append(15);
      list.remove(5);
       expect(list.toList(), [10, 15]);
    });

    test('Remove middle element', () {
      final list = SinglyLinkedList<int>();
      list.append(5);
      list.append(10);
      list.append(15);
      list.remove(10);
      expect(list.toList(), [5, 15]);
    });

    test('Remove tail element', () {
      final list = SinglyLinkedList<int>();
      list.append(5);
      list.append(10);
      list.append(15);
      list.remove(15);
      expect(list.toList(), [5, 10]);
    });

    test('Remove multiple occurrences of the same element', () {
      final list = SinglyLinkedList<int>();
      list.append(5);
      list.append(10);
      list.append(5);
      list.append(15);
      list.append(5);
      list.remove(5);
      expect(list.toList(), [10, 15]);
    });

    test('Remove element not in the list', () {
      final list = SinglyLinkedList<int>();
      list.append(5);
      list.append(10);
      list.append(15);
      list.remove(20);
      expect(list.toList(), [5, 10, 15]);
    });
  });


}
