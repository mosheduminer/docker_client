part of docker_client.api;

class EngineDescriptionPlugins {
  
  String type = null;
  
  String name = null;
  EngineDescriptionPlugins();

  @override
  String toString() {
    return 'EngineDescriptionPlugins[type=$type, name=$name, ]';
  }

  EngineDescriptionPlugins.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['Type'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['Type'] = type;
    if (name != null)
      json['Name'] = name;
    return json;
  }

  static List<EngineDescriptionPlugins> listFromJson(List<dynamic> json) {
    return json == null ? List<EngineDescriptionPlugins>() : json.map((value) => EngineDescriptionPlugins.fromJson(value)).toList();
  }

  static Map<String, EngineDescriptionPlugins> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EngineDescriptionPlugins>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EngineDescriptionPlugins.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EngineDescriptionPlugins-objects as value to a dart map
  static Map<String, List<EngineDescriptionPlugins>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EngineDescriptionPlugins>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EngineDescriptionPlugins.listFromJson(value);
       });
     }
     return map;
  }
}

