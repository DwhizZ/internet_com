import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = 'https://jsonplaceholder.typicode.com';

Future<void> fetchPosts() async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      List<dynamic> posts = json.decode(response.body);

      // Display relevant information for each post
      for (var post in posts) {
        print('Post ID: ${post['id']}');
        print('Title: ${post['title']}');
        print('Body: ${post['body']}');
        print('---');
      }
    } else {
      print('Error fetching posts. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}