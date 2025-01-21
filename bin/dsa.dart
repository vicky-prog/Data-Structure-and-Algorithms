import 'package:dsa/stackandqueue.dart' as dsa;

void main(List<String> arguments) {
  print('Hello world: ${dsa.isPalindrome(
    "xjbcx bxbcx"
  )}!');
  print(findMax(_numbers));
}

List<int> _numbers = [2,6,89,8,9,5];

findMax(List<int> numbers){
 if(numbers.isEmpty){
  return null;
 }
 int max = numbers[0];
 for(var i in numbers){
  if(i>max){
    max = i;
  }
 }
 return max;
}
