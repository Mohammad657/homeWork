/*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
*/

void main() {
  Map<String, String?> user = {'name': 'Mohammad alalaq', 'phone': null};

  String phoneNumber = user['phone'] ?? 'No phone number';

  if (phoneNumber == 'No phone number') {
    user['phone'] = '123-456-7890';
    print(phoneNumber);
    print("Updated phone number length: ${user['phone']?.length}");
  } 
}
