import 'dart:io';

void main() {
  final List<String> folders = [
    'lib/core/constants',
    'lib/core/helpers',
    'lib/core/theme',
    'lib/data/models',
    'lib/data/services',
    'lib/features/auth/screens',
    'lib/features/auth/widgets',
    'lib/features/auth/controllers',
    'lib/features/home/screens',
    'lib/features/home/widgets',
    'lib/features/home/controllers',
    'lib/widgets',
    'lib/routes',
  ];

  for (var path in folders) {
    final dir = Directory(path);
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
      print('Created: $path');
    }
  }

  print('\n✅ Folder structure generated!');
}
