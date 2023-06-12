import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ...

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text File Example'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: getTextFromFile(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!);
            } else if (snapshot.hasError) {
              return Text('Error loading text file');
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<String> getTextFromFile() async {
    try {
      final response = await http.get(Uri.parse('https://drive.google.com/file/d/1AX9Kzv9jDN3u42iDvsfr9cUoQJJfUCQB/view?usp=sharing'));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        print('Error loading text file: ${response.statusCode}');
        return '';
      }
    } catch (e) {
      print('Error loading text file: $e');
      return '';
    }
  }
}
