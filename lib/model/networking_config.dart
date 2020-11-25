part of docker_client.api;

class NetworkingConfig {
  /* A mapping of network name to endpoint configuration for that network.  */
  Map<String, EndpointSettings> endpointsConfig = {};
  NetworkingConfig();

  @override
  String toString() {
    return 'NetworkingConfig[endpointsConfig=$endpointsConfig, ]';
  }

  NetworkingConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    endpointsConfig = (json['EndpointsConfig'] == null) ?
      null :
      EndpointSettings.mapFromJson(json['EndpointsConfig']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endpointsConfig != null)
      json['EndpointsConfig'] = endpointsConfig;
    return json;
  }

  static List<NetworkingConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<NetworkingConfig>() : json.map((value) => NetworkingConfig.fromJson(value)).toList();
  }

  static Map<String, NetworkingConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NetworkingConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NetworkingConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkingConfig-objects as value to a dart map
  static Map<String, List<NetworkingConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NetworkingConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NetworkingConfig.listFromJson(value);
       });
     }
     return map;
  }
}

