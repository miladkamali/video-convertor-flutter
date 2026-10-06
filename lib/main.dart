import 'package:flutter/material.dart';
import 'package:video_convertor/src/rust/api/simple.dart';
import 'package:video_convertor/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: 
        ListView(
          children: [
            Text('Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
            Text('Action: Call Rust `miladAdd(a: 1, b: 2)`\nResult: `${miladAdd(a: 1, b: 2)}`'),
          ],
        ),
      ),
    );
  }
}
