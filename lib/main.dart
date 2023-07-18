import 'package:flutter/material.dart';
import 'package:mvvm/view/papago.dart';
import 'package:mvvm/viewModel/number_change.dart';
import 'package:mvvm/viewModel/papago.dart';
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
        appBar: AppBar(title: const Text('Papago'), actions: []),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<NumberChangeViewModel>(
              create: (context) => NumberChangeViewModel(),
            ),
            ChangeNotifierProvider<PapagoViewModel>(
              create: (context) => PapagoViewModel(),
            ),
          ],
          child: const PapagoView(),
        ),
      ),
    );
  }
}
