part of docker_client.api;

class ResourcesBlkioWeightDevice {
  
  String path = null;
  
  int weight = null;
  ResourcesBlkioWeightDevice();

  @override
  String toString() {
    return 'ResourcesBlkioWeightDevice[path=$path, weight=$weight, ]';
  }

  ResourcesBlkioWeightDevice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['Path'];
    weight = json['Weight'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['Path'] = path;
    if (weight != null)
      json['Weight'] = weight;
    return json;
  }

  static List<ResourcesBlkioWeightDevice> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourcesBlkioWeightDevice>() : json.map((value) => ResourcesBlkioWeightDevice.fromJson(value)).toList();
  }

  static Map<String, ResourcesBlkioWeightDevice> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourcesBlkioWeightDevice>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourcesBlkioWeightDevice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourcesBlkioWeightDevice-objects as value to a dart map
  static Map<String, List<ResourcesBlkioWeightDevice>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResourcesBlkioWeightDevice>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResourcesBlkioWeightDevice.listFromJson(value);
       });
     }
     return map;
  }
}

