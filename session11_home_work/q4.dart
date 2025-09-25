/*
 Q4 leetcode question
 Given a non-empty array of integers nums, every element appears twice except for one.
  Find that single one. You must implement a solution with a linear runtime complexity and use only constant extra space.

*/

int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num; // XOR
  }
  return result;
}

void main() {
  print(singleNumber([2, 2, 1]));
  print(singleNumber([4, 1, 2, 1, 2]));
  print(singleNumber([1]));
}
