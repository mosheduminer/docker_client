part of docker_client.api;

class PluginConfigLinux {
  
  List<String> capabilities = [];
  
  bool allowAllDevices = null;
  
  List<PluginDevice> devices = [];
  PluginConfigLinux();

  @override
  String toString() {
    return 'PluginConfigLinux[capabilities=$capabilities, allowAllDevices=$allowAllDevices, devices=$devices, ]';
  }

  PluginConfigLinux.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    capabilities = (json['Capabilities'] == null) ?
      null :
      (json['Capabilities'] as List).cast<String>();
    allowAllDevices = json['AllowAllDevices'];
    devices = (json['Devices'] == null) ?
      null :
      PluginDevice.listFromJson(json['Devices']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (capabilities != null)
      json['Capabilities'] = capabilities;
    if (allowAllDevices != null)
      json['AllowAllDevices'] = allowAllDevices;
    if (devices != null)
      json['Devices'] = devices;
    return json;
  }

  static List<PluginConfigLinux> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfigLinux>() : json.map((value) => PluginConfigLinux.fromJson(value)).toList();
  }

  static Map<String, PluginConfigLinux> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfigLinux>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfigLinux.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfigLinux-objects as value to a dart map
  static Map<String, List<PluginConfigLinux>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfigLinux>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfigLinux.listFromJson(value);
       });
     }
     return map;
  }
}

