import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = 'https://jsonplaceholder.typicode.com';

Future<void> fetchUser(int userId) async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId'));

    if (response.statusCode == 200) {
      Map<String, dynamic> user = json.decode(response.body);

      // Display essential user information
      print('User ID: ${user['id']}');
      print('Name: ${user['name']}');
      print('Email: ${user['email']}');
      print('Address: ${user['address']['street']}, ${user['address']['city']}');
      print('---');
    } else if (response.statusCode == 404) {
      print('Error fetching user. User with ID $userId not found.');
    } else {
      print('Error fetching user. Status code: ${response.statusCode}');
    }
  } catch (_) {
    print('An unexpected error occurred while fetching user.');
  }
}
