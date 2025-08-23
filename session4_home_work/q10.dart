/*
Exercise 10:
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
 a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
 conditions.
 */

void main() {
  Map<String, String?> envVars = {
    'APP': 'prod',
    'HOST': null,
    'KEY': 'abcd1234',
  };

  String defaultHost = 'localhost';

  String appEnv = (envVars['APP'] ?? 'dev').toUpperCase();
  String host = (envVars['HOST'] ?? defaultHost).toUpperCase();
  String key = (envVars['KEY'] ?? 'NO_KEY').toUpperCase();

  print('APP: $appEnv');
  print('HOST: $host');
  print('KEY: $key');

  if (appEnv == 'PROD' && key != 'NO_KEY') {
    print('\nProd ready');
  } else {
    print('\nNon-prod');
  }
}
