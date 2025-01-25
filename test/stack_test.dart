import 'package:dsa/stack.dart';
import 'package:test/test.dart';


void main() {
  group('Stack Tests', () {
    // Test case: Creating a stack and checking its initial state
    test('should be empty when initialized', () {
      Stack<int> stack = Stack<int>();
      expect(stack.isEmpty(), true);  // The stack should be empty
    });

    // Test case: Pushing an item onto the stack
    test('should add an item to the stack', () {
      Stack<int> stack = Stack<int>();
      stack.push(10);
      expect(stack.isEmpty(), false);  // The stack should not be empty
      expect(stack.peek(), 10);       // The top element should be 10
    });

    // Test case: Peeking the top item
    test('should return the top item without removing it', () {
      Stack<int> stack = Stack<int>();
      stack.push(20);
      expect(stack.peek(), 20);  // The top item should be 20
      expect(stack.isEmpty(), false);  // The stack should still not be empty
    });

    // Test case: Popping an item from the stack
    test('should remove and return the top item', () {
      Stack<int> stack = Stack<int>();
      stack.push(30);
      stack.push(40);
      
      expect(stack.pop(), null);  // The value 40 is removed from the stack
      
      expect(stack.peek(), 30);  // The top element after popping should be 30
      expect(stack.isEmpty(), false);  // The stack should still have 1 element
    });

    // Test case: Popping from an empty stack
    test('should return null when popping from an empty stack', () {
      Stack<int> stack = Stack<int>();
      expect(stack.pop(), null);  // Popping from an empty stack should return null
    });

    // Test case: Checking the toString method
    test('should correctly represent the stack as a string', () {
      Stack<int> stack = Stack<int>();
      stack.push(10);
      stack.push(20);
      expect(stack.toString(), '[10, 20]');  // The string representation should be '[10, 20]'
    });
  });
}
