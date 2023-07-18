import 'package:flutter/material.dart';
import 'package:mvvm/models/papago.dart';
import 'package:mvvm/viewModel/papago.dart';
import 'package:provider/provider.dart';

class PapagoView extends StatefulWidget {
  const PapagoView({super.key});

  @override
  State<PapagoView> createState() => _PapagoViewState();
}

class _PapagoViewState extends State<PapagoView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PapagoViewModel>(
      builder: (context, provider, child) {
        return Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(provider.papagoTranslatedText),
                MaterialButton(
                  onPressed: () async {
                    PapagoModel result = await provider.sendPapago();
                    provider.assignResponseData(result);
                  },
                  child: Text('파파고 번역 시작'),
                )
              ]),
        );
      },
    );
  }
}
