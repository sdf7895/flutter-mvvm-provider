import 'package:flutter/material.dart';
import 'package:mvvm/viewModel/number_change.dart';
import 'package:provider/provider.dart';

class NumberChange extends StatefulWidget {
  const NumberChange({super.key});

  @override
  State<NumberChange> createState() => _NumberChangeState();
}

class _NumberChangeState extends State<NumberChange> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberChangeViewModel>(
      builder: (context, viewModel, child) {
        int number = viewModel.getNumber();
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomMaterialButton(
                title: '+',
                onClick: () {
                  viewModel.add();
                },
              ),
              Text('count : $number'),
              CustomMaterialButton(
                title: '-',
                onClick: () {
                  viewModel.minus();
                },
              )
            ],
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class CustomMaterialButton extends StatelessWidget {
  String title;
  final Function() onClick;

  CustomMaterialButton({
    super.key,
    required this.title,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onClick,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
