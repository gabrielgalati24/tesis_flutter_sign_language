import 'package:flutter/material.dart';
import 'package:flutter_sign_language/widgets/progress_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
