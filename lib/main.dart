import 'package:flutter/material.dart';
import 'package:mvvm/view/number_change.dart';
import 'package:mvvm/viewModel/number_change.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Provider'), actions: []),
        body: ChangeNotifierProvider<NumberChangeViewModel>(
          create: (context) => NumberChangeViewModel(),
          child: const NumberChange(),
        ),
      ),
    );
  }
}
