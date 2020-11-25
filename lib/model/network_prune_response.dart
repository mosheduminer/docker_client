part of docker_client.api;

class NetworkPruneResponse {
  /* Networks that were deleted */
  List<String> networksDeleted = [];
  NetworkPruneResponse();

  @override
  String toString() {
    return 'NetworkPruneResponse[networksDeleted=$networksDeleted, ]';
  }

  NetworkPruneResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    networksDeleted = (json['NetworksDeleted'] == null) ?
      null :
      (json['NetworksDeleted'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (networksDeleted != null)
      json['NetworksDeleted'] = networksDeleted;
    return json;
  }

  static List<NetworkPruneResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<NetworkPruneResponse>() : json.map((value) => NetworkPruneResponse.fromJson(value)).toList();
  }

  static Map<String, NetworkPruneResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NetworkPruneResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NetworkPruneResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkPruneResponse-objects as value to a dart map
  static Map<String, List<NetworkPruneResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NetworkPruneResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NetworkPruneResponse.listFromJson(value);
       });
     }
     return map;
  }
}

