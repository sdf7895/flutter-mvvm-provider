import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvvm/models/papago.dart';

class PapagoDataSource {
  Future<PapagoModel> sendPapago() async {
    final url = Uri.parse('https://openapi.naver.com/v1/papago/n2mt');

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'X-Naver-Client-Id': 'your client id',
      'X-Naver-Client-Secret': 'your client secret key',
    };

    Map<String, dynamic> data = {
      'source': 'ko',
      'target': 'en',
      'text': '재밌는플러터 열심히공부하자'
    };

    String jsonData = jsonEncode(data);

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: jsonData,
      );

      if (response.statusCode == 200) {
        // 응답 데이터를 PapagoModel 객체로 변환하고 리턴
        return PapagoModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('HTTP POST 요청이 실패하였습니다. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      // 예외 처리
      print('POST 요청 중 오류가 발생하였습니다: $e');
    }

    return PapagoModel();
  }
}
