part of docker_client.api;

class InlineResponse400 {
  
  ErrorResponse errorResponse = null;
  /* The error message. Either \"must specify path parameter\" (path cannot be empty) or \"not a directory\" (path was asserted to be a directory but exists as a file).  */
  String message = null;
  InlineResponse400();

  @override
  String toString() {
    return 'InlineResponse400[errorResponse=$errorResponse, message=$message, ]';
  }

  InlineResponse400.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errorResponse = (json['ErrorResponse'] == null) ?
      null :
      ErrorResponse.fromJson(json['ErrorResponse']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errorResponse != null)
      json['ErrorResponse'] = errorResponse;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<InlineResponse400> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse400>() : json.map((value) => InlineResponse400.fromJson(value)).toList();
  }

  static Map<String, InlineResponse400> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse400>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse400.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse400-objects as value to a dart map
  static Map<String, List<InlineResponse400>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse400>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse400.listFromJson(value);
       });
     }
     return map;
  }
}

