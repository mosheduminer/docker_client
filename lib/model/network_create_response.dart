part of docker_client.api;

class NetworkCreateResponse {
  /* The ID of the created network. */
  String id = null;
  
  String warning = null;
  NetworkCreateResponse();

  @override
  String toString() {
    return 'NetworkCreateResponse[id=$id, warning=$warning, ]';
  }

  NetworkCreateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    warning = json['Warning'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (warning != null)
      json['Warning'] = warning;
    return json;
  }

  static List<NetworkCreateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<NetworkCreateResponse>() : json.map((value) => NetworkCreateResponse.fromJson(value)).toList();
  }

  static Map<String, NetworkCreateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NetworkCreateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NetworkCreateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkCreateResponse-objects as value to a dart map
  static Map<String, List<NetworkCreateResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NetworkCreateResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NetworkCreateResponse.listFromJson(value);
       });
     }
     return map;
  }
}

