part of docker_client.api;

class PluginSettings {
  
  List<PluginMount> mounts = [];
  
  List<String> env = [];
  
  List<String> args = [];
  
  List<PluginDevice> devices = [];
  PluginSettings();

  @override
  String toString() {
    return 'PluginSettings[mounts=$mounts, env=$env, args=$args, devices=$devices, ]';
  }

  PluginSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mounts = (json['Mounts'] == null) ?
      null :
      PluginMount.listFromJson(json['Mounts']);
    env = (json['Env'] == null) ?
      null :
      (json['Env'] as List).cast<String>();
    args = (json['Args'] == null) ?
      null :
      (json['Args'] as List).cast<String>();
    devices = (json['Devices'] == null) ?
      null :
      PluginDevice.listFromJson(json['Devices']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mounts != null)
      json['Mounts'] = mounts;
    if (env != null)
      json['Env'] = env;
    if (args != null)
      json['Args'] = args;
    if (devices != null)
      json['Devices'] = devices;
    return json;
  }

  static List<PluginSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginSettings>() : json.map((value) => PluginSettings.fromJson(value)).toList();
  }

  static Map<String, PluginSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginSettings.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginSettings-objects as value to a dart map
  static Map<String, List<PluginSettings>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginSettings>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginSettings.listFromJson(value);
       });
     }
     return map;
  }
}

