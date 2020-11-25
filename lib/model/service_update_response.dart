part of docker_client.api;

class ServiceUpdateResponse {
  /* Optional warning messages */
  List<String> warnings = [];
  ServiceUpdateResponse();

  @override
  String toString() {
    return 'ServiceUpdateResponse[warnings=$warnings, ]';
  }

  ServiceUpdateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    warnings = (json['Warnings'] == null) ?
      null :
      (json['Warnings'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (warnings != null)
      json['Warnings'] = warnings;
    return json;
  }

  static List<ServiceUpdateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceUpdateResponse>() : json.map((value) => ServiceUpdateResponse.fromJson(value)).toList();
  }

  static Map<String, ServiceUpdateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceUpdateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceUpdateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceUpdateResponse-objects as value to a dart map
  static Map<String, List<ServiceUpdateResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceUpdateResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceUpdateResponse.listFromJson(value);
       });
     }
     return map;
  }
}

