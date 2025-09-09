/*
 Q7. leetcode question
 Given an integer array nums, return true if any value appears at least twice in the array, 
 and return false if every element is distinct.
 */
bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};
  for (int n in nums) {
    if (seen.contains(n)) {
      return true;
    }
    seen.add(n);
  }
  return false;
}

void main() {
  print(containsDuplicate([1, 2, 3, 4]));
  print(containsDuplicate([1, 2, 3, 1]));
  print(containsDuplicate([5, 6, 7, 8, 5]));
}
