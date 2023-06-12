import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

const kHtml = """
<h1>Heading</h1>
<p>A paragraph with <strong>strong</strong> <em>emphasized</em> text.</p>
<ol>
  <li>List item number one</li>
  <li>
    Two
    <ul>
      <li>2.1 (nested)</li>
      <li>2.2</li>
    </ul>
  </li>
  <li>Three</li>
</ol>
<p>Thank you</p>
""";

class HelloWorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('HelloWorldScreen'),
    ),
    body: HtmlWidget(
      kHtml,
      //webView: false,
    ),
  );
}