part of docker_client.api;

class PluginDevice {
  
  String name = null;
  
  String description = null;
  
  List<String> settable = [];
  
  String path = null;
  PluginDevice();

  @override
  String toString() {
    return 'PluginDevice[name=$name, description=$description, settable=$settable, path=$path, ]';
  }

  PluginDevice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    description = json['Description'];
    settable = (json['Settable'] == null) ?
      null :
      (json['Settable'] as List).cast<String>();
    path = json['Path'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (description != null)
      json['Description'] = description;
    if (settable != null)
      json['Settable'] = settable;
    if (path != null)
      json['Path'] = path;
    return json;
  }

  static List<PluginDevice> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginDevice>() : json.map((value) => PluginDevice.fromJson(value)).toList();
  }

  static Map<String, PluginDevice> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginDevice>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginDevice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginDevice-objects as value to a dart map
  static Map<String, List<PluginDevice>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginDevice>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginDevice.listFromJson(value);
       });
     }
     return map;
  }
}

