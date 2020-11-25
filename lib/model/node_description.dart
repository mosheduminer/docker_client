part of docker_client.api;

class NodeDescription {
  
  String hostname = null;
  
  Platform platform = null;
  
  ResourceObject resources = null;
  
  EngineDescription engine = null;
  
  TLSInfo tLSInfo = null;
  NodeDescription();

  @override
  String toString() {
    return 'NodeDescription[hostname=$hostname, platform=$platform, resources=$resources, engine=$engine, tLSInfo=$tLSInfo, ]';
  }

  NodeDescription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hostname = json['Hostname'];
    platform = (json['Platform'] == null) ?
      null :
      Platform.fromJson(json['Platform']);
    resources = (json['Resources'] == null) ?
      null :
      ResourceObject.fromJson(json['Resources']);
    engine = (json['Engine'] == null) ?
      null :
      EngineDescription.fromJson(json['Engine']);
    tLSInfo = (json['TLSInfo'] == null) ?
      null :
      TLSInfo.fromJson(json['TLSInfo']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hostname != null)
      json['Hostname'] = hostname;
    if (platform != null)
      json['Platform'] = platform;
    if (resources != null)
      json['Resources'] = resources;
    if (engine != null)
      json['Engine'] = engine;
    if (tLSInfo != null)
      json['TLSInfo'] = tLSInfo;
    return json;
  }

  static List<NodeDescription> listFromJson(List<dynamic> json) {
    return json == null ? List<NodeDescription>() : json.map((value) => NodeDescription.fromJson(value)).toList();
  }

  static Map<String, NodeDescription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NodeDescription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NodeDescription.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NodeDescription-objects as value to a dart map
  static Map<String, List<NodeDescription>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NodeDescription>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NodeDescription.listFromJson(value);
       });
     }
     return map;
  }
}

