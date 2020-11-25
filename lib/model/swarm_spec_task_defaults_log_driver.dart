part of docker_client.api;

class SwarmSpecTaskDefaultsLogDriver {
  /* The log driver to use as a default for new tasks.  */
  String name = null;
  /* Driver-specific options for the selectd log driver, specified as key/value pairs.  */
  Map<String, String> options = {};
  SwarmSpecTaskDefaultsLogDriver();

  @override
  String toString() {
    return 'SwarmSpecTaskDefaultsLogDriver[name=$name, options=$options, ]';
  }

  SwarmSpecTaskDefaultsLogDriver.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (options != null)
      json['Options'] = options;
    return json;
  }

  static List<SwarmSpecTaskDefaultsLogDriver> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecTaskDefaultsLogDriver>() : json.map((value) => SwarmSpecTaskDefaultsLogDriver.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecTaskDefaultsLogDriver> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecTaskDefaultsLogDriver>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecTaskDefaultsLogDriver.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecTaskDefaultsLogDriver-objects as value to a dart map
  static Map<String, List<SwarmSpecTaskDefaultsLogDriver>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecTaskDefaultsLogDriver>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecTaskDefaultsLogDriver.listFromJson(value);
       });
     }
     return map;
  }
}

