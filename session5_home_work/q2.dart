/*
 Create a program that stores country codes and names. Start with: EG → Egypt, SA → Saudi
 Arabia, AE → UAE. Add QA → Qatar and then print the name of the country with the code EG
*/

import 'dart:io';

void main() {
  String countryCode = "";
  String country = "";
  Map<String, String> listCountry = {};

  while (true) {
    stdout.write("enter the country code (or q to quit): ");
    countryCode = stdin.readLineSync() ?? "default";
    if (countryCode == "q") break;

    stdout.write("enter the country (or q to quit): ");
    country = stdin.readLineSync() ?? "default";
    if (country == "q") break;

    listCountry.addAll({countryCode: country});
  }

  print("Exited program. $listCountry");
}
