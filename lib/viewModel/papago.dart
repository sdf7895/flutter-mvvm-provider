import 'package:flutter/material.dart';
import 'package:mvvm/model/papago.dart';
import 'package:mvvm/models/papago.dart';

class PapagoViewModel extends ChangeNotifier {
  final PapagoDataModel _papagoDataModel = PapagoDataModel();
  dynamic papagoTranslatedText = '';

  Future<PapagoModel> sendPapago() {
    return _papagoDataModel.sendPapago();
  }

  void assignResponseData(PapagoModel data) {
    papagoTranslatedText = data.message?.result?.translatedText;
    notifyListeners();
  }
}
