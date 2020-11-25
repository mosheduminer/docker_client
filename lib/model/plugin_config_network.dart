part of docker_client.api;

class PluginConfigNetwork {
  
  String type = null;
  PluginConfigNetwork();

  @override
  String toString() {
    return 'PluginConfigNetwork[type=$type, ]';
  }

  PluginConfigNetwork.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['Type'] = type;
    return json;
  }

  static List<PluginConfigNetwork> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfigNetwork>() : json.map((value) => PluginConfigNetwork.fromJson(value)).toList();
  }

  static Map<String, PluginConfigNetwork> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfigNetwork>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfigNetwork.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfigNetwork-objects as value to a dart map
  static Map<String, List<PluginConfigNetwork>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfigNetwork>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfigNetwork.listFromJson(value);
       });
     }
     return map;
  }
}

