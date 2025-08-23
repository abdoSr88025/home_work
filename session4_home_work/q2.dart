/*
Exercise 2:
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.

*/
void main() {
  Map<String, String> countryCodes = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'AE': 'United Arab Emirates',
    'KW': 'Kuwait',
  };

  print("Country for 'EG': ${countryCodes['EG']}");

  countryCodes['QA'] = 'Qatar';

  print("Total countries length : ${countryCodes.length}");

  if (countryCodes.containsKey('JO')) {
    print("Jordan exists");
  } else {
    print("Jordan missing.");
  }
}
