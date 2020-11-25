part of docker_client.api;

class PluginInterfaceType {
  
  String prefix = null;
  
  String capability = null;
  
  String version = null;
  PluginInterfaceType();

  @override
  String toString() {
    return 'PluginInterfaceType[prefix=$prefix, capability=$capability, version=$version, ]';
  }

  PluginInterfaceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    prefix = json['Prefix'];
    capability = json['Capability'];
    version = json['Version'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (prefix != null)
      json['Prefix'] = prefix;
    if (capability != null)
      json['Capability'] = capability;
    if (version != null)
      json['Version'] = version;
    return json;
  }

  static List<PluginInterfaceType> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginInterfaceType>() : json.map((value) => PluginInterfaceType.fromJson(value)).toList();
  }

  static Map<String, PluginInterfaceType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginInterfaceType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginInterfaceType.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginInterfaceType-objects as value to a dart map
  static Map<String, List<PluginInterfaceType>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginInterfaceType>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginInterfaceType.listFromJson(value);
       });
     }
     return map;
  }
}

