part of docker_client.api;

class ContainerUpdateResponse {
  
  List<String> warnings = [];
  ContainerUpdateResponse();

  @override
  String toString() {
    return 'ContainerUpdateResponse[warnings=$warnings, ]';
  }

  ContainerUpdateResponse.fromJson(Map<String, dynamic> json) {
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

  static List<ContainerUpdateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerUpdateResponse>() : json.map((value) => ContainerUpdateResponse.fromJson(value)).toList();
  }

  static Map<String, ContainerUpdateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerUpdateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerUpdateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerUpdateResponse-objects as value to a dart map
  static Map<String, List<ContainerUpdateResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerUpdateResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerUpdateResponse.listFromJson(value);
       });
     }
     return map;
  }
}

