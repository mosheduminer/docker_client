part of docker_client.api;

class Plugin {
  
  String id = null;
  
  String name = null;
  /* True if the plugin is running. False if the plugin is not running, only installed. */
  bool enabled = null;
  
  PluginSettings settings = null;
  /* plugin remote reference used to push/pull the plugin */
  String pluginReference = null;
  
  PluginConfig config = null;
  Plugin();

  @override
  String toString() {
    return 'Plugin[id=$id, name=$name, enabled=$enabled, settings=$settings, pluginReference=$pluginReference, config=$config, ]';
  }

  Plugin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    name = json['Name'];
    enabled = json['Enabled'];
    settings = (json['Settings'] == null) ?
      null :
      PluginSettings.fromJson(json['Settings']);
    pluginReference = json['PluginReference'];
    config = (json['Config'] == null) ?
      null :
      PluginConfig.fromJson(json['Config']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (name != null)
      json['Name'] = name;
    if (enabled != null)
      json['Enabled'] = enabled;
    if (settings != null)
      json['Settings'] = settings;
    if (pluginReference != null)
      json['PluginReference'] = pluginReference;
    if (config != null)
      json['Config'] = config;
    return json;
  }

  static List<Plugin> listFromJson(List<dynamic> json) {
    return json == null ? List<Plugin>() : json.map((value) => Plugin.fromJson(value)).toList();
  }

  static Map<String, Plugin> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Plugin>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Plugin.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Plugin-objects as value to a dart map
  static Map<String, List<Plugin>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Plugin>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Plugin.listFromJson(value);
       });
     }
     return map;
  }
}

