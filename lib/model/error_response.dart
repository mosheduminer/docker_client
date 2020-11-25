part of docker_client.api;

class ErrorResponse {
  /* The error message. */
  String message = null;
  ErrorResponse();

  @override
  String toString() {
    return 'ErrorResponse[message=$message, ]';
  }

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<ErrorResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ErrorResponse>() : json.map((value) => ErrorResponse.fromJson(value)).toList();
  }

  static Map<String, ErrorResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ErrorResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ErrorResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ErrorResponse-objects as value to a dart map
  static Map<String, List<ErrorResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ErrorResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ErrorResponse.listFromJson(value);
       });
     }
     return map;
  }
}

