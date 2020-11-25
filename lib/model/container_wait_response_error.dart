part of docker_client.api;

class ContainerWaitResponseError {
  /* Details of an error */
  String message = null;
  ContainerWaitResponseError();

  @override
  String toString() {
    return 'ContainerWaitResponseError[message=$message, ]';
  }

  ContainerWaitResponseError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['Message'] = message;
    return json;
  }

  static List<ContainerWaitResponseError> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerWaitResponseError>() : json.map((value) => ContainerWaitResponseError.fromJson(value)).toList();
  }

  static Map<String, ContainerWaitResponseError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerWaitResponseError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerWaitResponseError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerWaitResponseError-objects as value to a dart map
  static Map<String, List<ContainerWaitResponseError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerWaitResponseError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerWaitResponseError.listFromJson(value);
       });
     }
     return map;
  }
}

