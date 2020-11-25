part of docker_client.api;

class PluginEnv {
  
  String name = null;
  
  String description = null;
  
  List<String> settable = [];
  
  String value = null;
  PluginEnv();

  @override
  String toString() {
    return 'PluginEnv[name=$name, description=$description, settable=$settable, value=$value, ]';
  }

  PluginEnv.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    description = json['Description'];
    settable = (json['Settable'] == null) ?
      null :
      (json['Settable'] as List).cast<String>();
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (description != null)
      json['Description'] = description;
    if (settable != null)
      json['Settable'] = settable;
    if (value != null)
      json['Value'] = value;
    return json;
  }

  static List<PluginEnv> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginEnv>() : json.map((value) => PluginEnv.fromJson(value)).toList();
  }

  static Map<String, PluginEnv> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginEnv>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginEnv.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginEnv-objects as value to a dart map
  static Map<String, List<PluginEnv>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginEnv>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginEnv.listFromJson(value);
       });
     }
     return map;
  }
}

