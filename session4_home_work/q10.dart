/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/
void main() {
  Map<String, String?> env = {
    'APP_ENV': 'production',
    'DB_HOST': null,
    'API_KEY': '12345',
  };

  String displayAppEnv = (env['APP_ENV'] ?? 'default').toUpperCase();
  String displayDbHost = (env['DB_HOST'] ?? 'default').toUpperCase();
  String displayApiKey = (env['API_KEY'] ?? 'default').toUpperCase();

  print('APP_ENV: $displayAppEnv');
  print('DB_HOST: $displayDbHost');
  print('API_KEY: $displayApiKey');

  if (env['APP_ENV'] == 'production') {
    print("Prod ready");
  } else {
    print("Non-prod");
  }
}
