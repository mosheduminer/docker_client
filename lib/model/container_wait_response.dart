part of docker_client.api;

class ContainerWaitResponse {
  /* Exit code of the container */
  int statusCode = null;
  
  ContainerWaitResponseError error = null;
  ContainerWaitResponse();

  @override
  String toString() {
    return 'ContainerWaitResponse[statusCode=$statusCode, error=$error, ]';
  }

  ContainerWaitResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    statusCode = json['StatusCode'];
    error = (json['Error'] == null) ?
      null :
      ContainerWaitResponseError.fromJson(json['Error']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (statusCode != null)
      json['StatusCode'] = statusCode;
    if (error != null)
      json['Error'] = error;
    return json;
  }

  static List<ContainerWaitResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerWaitResponse>() : json.map((value) => ContainerWaitResponse.fromJson(value)).toList();
  }

  static Map<String, ContainerWaitResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerWaitResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerWaitResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerWaitResponse-objects as value to a dart map
  static Map<String, List<ContainerWaitResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerWaitResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerWaitResponse.listFromJson(value);
       });
     }
     return map;
  }
}

