part of docker_client.api;

class InlineObject3 {
  /* The ID or name of the container to connect to the network. */
  String container = null;
  
  EndpointSettings endpointConfig = null;
  InlineObject3();

  @override
  String toString() {
    return 'InlineObject3[container=$container, endpointConfig=$endpointConfig, ]';
  }

  InlineObject3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    container = json['Container'];
    endpointConfig = (json['EndpointConfig'] == null) ?
      null :
      EndpointSettings.fromJson(json['EndpointConfig']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (container != null)
      json['Container'] = container;
    if (endpointConfig != null)
      json['EndpointConfig'] = endpointConfig;
    return json;
  }

  static List<InlineObject3> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject3>() : json.map((value) => InlineObject3.fromJson(value)).toList();
  }

  static Map<String, InlineObject3> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject3>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject3.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject3-objects as value to a dart map
  static Map<String, List<InlineObject3>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject3>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject3.listFromJson(value);
       });
     }
     return map;
  }
}

