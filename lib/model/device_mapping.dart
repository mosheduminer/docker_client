part of docker_client.api;

class DeviceMapping {
  
  String pathOnHost = null;
  
  String pathInContainer = null;
  
  String cgroupPermissions = null;
  DeviceMapping();

  @override
  String toString() {
    return 'DeviceMapping[pathOnHost=$pathOnHost, pathInContainer=$pathInContainer, cgroupPermissions=$cgroupPermissions, ]';
  }

  DeviceMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pathOnHost = json['PathOnHost'];
    pathInContainer = json['PathInContainer'];
    cgroupPermissions = json['CgroupPermissions'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pathOnHost != null)
      json['PathOnHost'] = pathOnHost;
    if (pathInContainer != null)
      json['PathInContainer'] = pathInContainer;
    if (cgroupPermissions != null)
      json['CgroupPermissions'] = cgroupPermissions;
    return json;
  }

  static List<DeviceMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<DeviceMapping>() : json.map((value) => DeviceMapping.fromJson(value)).toList();
  }

  static Map<String, DeviceMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeviceMapping.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceMapping-objects as value to a dart map
  static Map<String, List<DeviceMapping>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DeviceMapping>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DeviceMapping.listFromJson(value);
       });
     }
     return map;
  }
}

