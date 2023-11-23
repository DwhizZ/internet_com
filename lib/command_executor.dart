import 'package:args/args.dart';
import 'dart:io';
import 'package:dart_json_internet_cli_app/fetch_posts.dart';
import 'package:dart_json_internet_cli_app/fetch_users.dart';
import 'package:dart_json_internet_cli_app/fetch_comments.dart';

class CommandExecutor {
  static void executeCommand(List<String> arguments) {
    final parser = ArgParser()
      ..addCommand('posts')
      ..addCommand('comments')
        ..addOption('post-id', abbr: 'p', help: 'Specify the post ID for comments')
      ..addCommand('users')
        ..addOption('user-id', abbr: 'u', help: 'Specify the user ID')
      ..addFlag('help', abbr: 'h', negatable: false, help: 'Display usage information');

    ArgResults argResults;
    try {
      argResults = parser.parse(arguments);
    } catch (e) {
      print('Error parsing arguments: $e');
      exit(1);
    }

    if (argResults['help']) {
      print(parser.usage);
      exit(0);
    }

    try {
      switch (argResults.command?.name) {
        case 'posts':
          print('Executing posts command');
         fetchPosts();
          break;
        case 'comments':
          final postId = int.tryParse(argResults['post-id'] ?? '');
          if (postId == null) {
            print('Invalid post ID. Please provide a valid integer using --post-id.');
            exit(1);
          }
          print('Executing comments command with post ID: $postId');
         fetchComments(postId);
          break;
        case 'users':
          final userId = int.tryParse(argResults['user-id'] ?? '');
          if (userId == null) {
            print('Invalid user ID. Please provide a valid integer using --user-id.');
            exit(1);
          }
          print('Executing users command with user ID: $userId');
          fetchUser(userId);
          break;
        default:
          print('Unknown command. Use --help for usage information.');
          exit(1);
      }
    } catch (e) {
      print('An unexpected error occurred: $e');
      exit(1);
    }
  }
}
