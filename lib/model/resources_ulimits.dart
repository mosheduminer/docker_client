part of docker_client.api;

class ResourcesUlimits {
  /* Name of ulimit */
  String name = null;
  /* Soft limit */
  int soft = null;
  /* Hard limit */
  int hard = null;
  ResourcesUlimits();

  @override
  String toString() {
    return 'ResourcesUlimits[name=$name, soft=$soft, hard=$hard, ]';
  }

  ResourcesUlimits.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    soft = json['Soft'];
    hard = json['Hard'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (soft != null)
      json['Soft'] = soft;
    if (hard != null)
      json['Hard'] = hard;
    return json;
  }

  static List<ResourcesUlimits> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourcesUlimits>() : json.map((value) => ResourcesUlimits.fromJson(value)).toList();
  }

  static Map<String, ResourcesUlimits> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourcesUlimits>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourcesUlimits.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourcesUlimits-objects as value to a dart map
  static Map<String, List<ResourcesUlimits>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResourcesUlimits>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResourcesUlimits.listFromJson(value);
       });
     }
     return map;
  }
}

