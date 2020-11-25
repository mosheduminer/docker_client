part of docker_client.api;

class EngineDescription {
  
  String engineVersion = null;
  
  Map<String, String> labels = {};
  
  List<EngineDescriptionPlugins> plugins = [];
  EngineDescription();

  @override
  String toString() {
    return 'EngineDescription[engineVersion=$engineVersion, labels=$labels, plugins=$plugins, ]';
  }

  EngineDescription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    engineVersion = json['EngineVersion'];
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
    plugins = (json['Plugins'] == null) ?
      null :
      EngineDescriptionPlugins.listFromJson(json['Plugins']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (engineVersion != null)
      json['EngineVersion'] = engineVersion;
    if (labels != null)
      json['Labels'] = labels;
    if (plugins != null)
      json['Plugins'] = plugins;
    return json;
  }

  static List<EngineDescription> listFromJson(List<dynamic> json) {
    return json == null ? List<EngineDescription>() : json.map((value) => EngineDescription.fromJson(value)).toList();
  }

  static Map<String, EngineDescription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EngineDescription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EngineDescription.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EngineDescription-objects as value to a dart map
  static Map<String, List<EngineDescription>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EngineDescription>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EngineDescription.listFromJson(value);
       });
     }
     return map;
  }
}

