part of docker_client.api;

class Platform {
  /* Architecture represents the hardware architecture (for example, `x86_64`).  */
  String architecture = null;
  /* OS represents the Operating System (for example, `linux` or `windows`).  */
  String OS = null;
  Platform();

  @override
  String toString() {
    return 'Platform[architecture=$architecture, OS=$OS, ]';
  }

  Platform.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    architecture = json['Architecture'];
    OS = json['OS'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (architecture != null)
      json['Architecture'] = architecture;
    if (OS != null)
      json['OS'] = OS;
    return json;
  }

  static List<Platform> listFromJson(List<dynamic> json) {
    return json == null ? List<Platform>() : json.map((value) => Platform.fromJson(value)).toList();
  }

  static Map<String, Platform> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Platform>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Platform.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Platform-objects as value to a dart map
  static Map<String, List<Platform>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Platform>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Platform.listFromJson(value);
       });
     }
     return map;
  }
}

