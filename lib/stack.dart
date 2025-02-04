int calculate() {
  return 6 * 7;
}

bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

// Stack 

class Stack<T> {
   List<T> _stack = [];

   void push(T value){
    _stack.add(value);
   }

   T? pop(){
    if(_stack.isEmpty) return null;
    _stack.removeLast();
    return null;
   }

   T? peek() {
    if (_stack.isEmpty) return null;
    return _stack.last;
  }

  bool isEmpty() => _stack.isEmpty;

  @override
  String toString() {
    return _stack.toString();
  }
  
}

void main() {
  Stack<int> stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  print("Stack: $stack");
  print("Popped: ${stack.pop()}");
  print("Stack after pop: $stack");
}


// Case 1: Balanced Input
// expression = "((()))";
// Stack operations:
// 1. Push `(` → Stack: `['(']`
// 2. Push `(` → Stack: `['(', '(']`
// 3. Push `(` → Stack: `['(', '(', '(']`
// 4. Pop `(` → Stack: `['(', '(']`
// 5. Pop `(` → Stack: `['(']`
// 6. Pop `(` → Stack: `[]`

// Stack is empty → Balanced → Returns `true`.

// Case 2: Unbalanced Input

// expression = "((())";
// Stack operations:
// 1. Push `(` → Stack: `['(']`
// 2. Push `(` → Stack: `['(', '(']`
// 3. Push `(` → Stack: `['(', '(', '(']`
// 4. Pop `(` → Stack: `['(', '(']`
// 5. Pop `(` → Stack: `['(']`

// Stack is not empty → Unbalanced → Returns `false`.


// Case 3: Extra Closing Parenthesis

// expression = "(()))";
// Stack operations:
// 1. Push `(` → Stack: `['(']`
// 2. Push `(` → Stack: `['(', '(']`
// 3. Pop `(` → Stack: `['(']`
// 4. Pop `(` → Stack: `[]`
// 5. Encounter `)` → Stack is empty → Returns `false`.


// Key Points
// Stack is Perfect for Matching Parentheses: It’s a LIFO (Last In, First Out) data structure, which fits the problem perfectly.
// Balanced Parentheses: Every ( has a matching ) in the correct order.
// Edge Cases:
// Empty string: "" → Returns true (nothing to balance).
// Single parenthesis: "(" or ")" → Returns false (not balanced).
// Mixed cases: "()(()))(" → Properly handled.






