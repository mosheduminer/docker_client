part of docker_client.api;

class SwarmSpecTaskDefaults {
  
  SwarmSpecTaskDefaultsLogDriver logDriver = null;
  SwarmSpecTaskDefaults();

  @override
  String toString() {
    return 'SwarmSpecTaskDefaults[logDriver=$logDriver, ]';
  }

  SwarmSpecTaskDefaults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    logDriver = (json['LogDriver'] == null) ?
      null :
      SwarmSpecTaskDefaultsLogDriver.fromJson(json['LogDriver']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (logDriver != null)
      json['LogDriver'] = logDriver;
    return json;
  }

  static List<SwarmSpecTaskDefaults> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecTaskDefaults>() : json.map((value) => SwarmSpecTaskDefaults.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecTaskDefaults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecTaskDefaults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecTaskDefaults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecTaskDefaults-objects as value to a dart map
  static Map<String, List<SwarmSpecTaskDefaults>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecTaskDefaults>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecTaskDefaults.listFromJson(value);
       });
     }
     return map;
  }
}

