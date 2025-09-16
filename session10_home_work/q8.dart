/*
 Q8 leetcode question
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.
*/
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, int> count = {};

  for (var ch in s.split('')) {
    count[ch] = (count[ch] ?? 0) + 1;
  }

  for (var ch in t.split('')) {
    if (!count.containsKey(ch)) return false;
    count[ch] = count[ch]! - 1;
    if (count[ch] == 0) {
      count.remove(ch);
    }
  }

  return count.isEmpty;
}

void main() {
  print(isAnagram("listen", "silent"));
  print(isAnagram("rat", "car"));
  print(isAnagram("anagram", "nagaram"));
}
