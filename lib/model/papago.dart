import 'package:mvvm/data/remoteData/papago.dart';
import 'package:mvvm/models/papago.dart';

class PapagoDataModel {
  final PapagoDataSource _papagoDataSource = PapagoDataSource();

  Future<PapagoModel> sendPapago() {
    return _papagoDataSource.sendPapago();
  }
}
