part of docker_client.api;

class ErrorDetail {
  
  int code = null;
  
  String message = null;
  ErrorDetail();

  @override
  String toString() {
    return 'ErrorDetail[code=$code, message=$message, ]';
  }

  ErrorDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<ErrorDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<ErrorDetail>() : json.map((value) => ErrorDetail.fromJson(value)).toList();
  }

  static Map<String, ErrorDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ErrorDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ErrorDetail.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ErrorDetail-objects as value to a dart map
  static Map<String, List<ErrorDetail>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ErrorDetail>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ErrorDetail.listFromJson(value);
       });
     }
     return map;
  }
}

