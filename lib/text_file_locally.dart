// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
//
// // ...
//
// class YourWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text File Example'),
//       ),
//       body: Center(
//         child: FutureBuilder<String>(
//           future: getTextFromFile(),
//           builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//             if (snapshot.hasData) {
//               return SingleChildScrollView(child: Text(snapshot.data!));
//             } else if (snapshot.hasError) {
//               return Text('Error loading text file');
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );
//   }
//
//   Future<String> getTextFromFile() async {
//     try {
//       return await rootBundle.loadString('assets/netro.txt');
//     } catch (e) {
//       print('Error reading file: $e');
//       return '';
//     }
//   }
// }
