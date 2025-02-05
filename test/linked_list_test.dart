

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

  group('LinkedList Remove Tests', (){
    test("Remove vaule from the list", (){
      SinglyLinkedList<int> linkedList = SinglyLinkedList<int>();
      linkedList.append(1);
      linkedList.append(2);
   
       Node<int>? current = linkedList.head;
      linkedList.remove(2);
      expect(linkedList.remove(2), 1);
    });
  });
}
