import 'package:flutter/material.dart';
import 'package:word_to_dart/text_file_link.dart';
import 'package:word_to_dart/text_file_locally.dart';
import 'html_file_locally.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: YourWidget(),
    );
  }
}

