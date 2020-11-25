part of docker_client.api;

class Driver {
  /* Name of the driver. */
  String name = null;
  /* Key/value map of driver-specific options. */
  Map<String, String> options = {};
  Driver();

  @override
  String toString() {
    return 'Driver[name=$name, options=$options, ]';
  }

  Driver.fromJson(Map<String, dynamic> json) {
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

  static List<Driver> listFromJson(List<dynamic> json) {
    return json == null ? List<Driver>() : json.map((value) => Driver.fromJson(value)).toList();
  }

  static Map<String, Driver> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Driver>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Driver.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Driver-objects as value to a dart map
  static Map<String, List<Driver>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Driver>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Driver.listFromJson(value);
       });
     }
     return map;
  }
}

