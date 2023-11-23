import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = 'https://jsonplaceholder.typicode.com';

Future<void> fetchComments(int postId) async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/comments?postId=$postId'));

    if (response.statusCode == 200) {
      List<dynamic> comments = json.decode(response.body);

      if (comments.isNotEmpty) {
        for (var comment in comments) {
          // Display key details for each comment
          print('Comment ID: ${comment['id']}');
          print('Name: ${comment['name']}');
          print('Email: ${comment['email']}');
          print('Body: ${comment['body']}');
          print('---');
        }
      } else {
        print('No comments found for post ID $postId.');
      }
    } else if (response.statusCode == 404) {
      print('Error fetching comments. No comments found for post ID $postId.');
    } else {
      print('Error fetching comments. Status code: ${response.statusCode}');
    }
  } catch (_) {
    print('An unexpected error occurred while fetching comments.');
  }
}
