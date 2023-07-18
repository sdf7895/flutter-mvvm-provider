class PapagoModel {
  Message? message;

  PapagoModel({this.message});

  PapagoModel.fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    return data;
  }
}

class Message {
  Result? result;
  String? type;
  String? service;
  String? version;

  Message({this.result, this.type, this.service, this.version});

  Message.fromJson(Map<String, dynamic> json) {
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    type = json['@type'];
    service = json['@service'];
    version = json['@version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['@type'] = this.type;
    data['@service'] = this.service;
    data['@version'] = this.version;
    return data;
  }
}

class Result {
  String? srcLangType;
  String? tarLangType;
  String? translatedText;
  String? engineType;

  Result(
      {this.srcLangType,
      this.tarLangType,
      this.translatedText,
      this.engineType});

  Result.fromJson(Map<String, dynamic> json) {
    srcLangType = json['srcLangType'];
    tarLangType = json['tarLangType'];
    translatedText = json['translatedText'];
    engineType = json['engineType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['srcLangType'] = this.srcLangType;
    data['tarLangType'] = this.tarLangType;
    data['translatedText'] = this.translatedText;
    data['engineType'] = this.engineType;
    return data;
  }
}
