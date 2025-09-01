/*
leet code question
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
 */

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> newMap = {};

  for (int i = 0; i < nums.length; i++) {
    int diffBetNums = target - nums[i];

    if (newMap.containsKey(diffBetNums)) {
      return [newMap[diffBetNums]!, i];
    }

    newMap[nums[i]] = i;
  }

  return [];
}

void main() {
  List<int> nums = [9, 7, 13, 11];
  int target = 18;

  print(twoSum(nums, target));
}
