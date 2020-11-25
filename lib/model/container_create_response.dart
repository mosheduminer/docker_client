part of docker_client.api;

class ContainerCreateResponse {
  /* The ID of the created container */
  String id = null;
  /* Warnings encountered when creating the container */
  List<String> warnings = [];
  ContainerCreateResponse();

  @override
  String toString() {
    return 'ContainerCreateResponse[id=$id, warnings=$warnings, ]';
  }

  ContainerCreateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    warnings = (json['Warnings'] == null) ?
      null :
      (json['Warnings'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (warnings != null)
      json['Warnings'] = warnings;
    return json;
  }

  static List<ContainerCreateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerCreateResponse>() : json.map((value) => ContainerCreateResponse.fromJson(value)).toList();
  }

  static Map<String, ContainerCreateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerCreateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerCreateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerCreateResponse-objects as value to a dart map
  static Map<String, List<ContainerCreateResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerCreateResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerCreateResponse.listFromJson(value);
       });
     }
     return map;
  }
}

