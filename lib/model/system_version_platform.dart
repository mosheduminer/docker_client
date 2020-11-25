part of docker_client.api;

class SystemVersionPlatform {
  
  String name = null;
  SystemVersionPlatform();

  @override
  String toString() {
    return 'SystemVersionPlatform[name=$name, ]';
  }

  SystemVersionPlatform.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    return json;
  }

  static List<SystemVersionPlatform> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemVersionPlatform>() : json.map((value) => SystemVersionPlatform.fromJson(value)).toList();
  }

  static Map<String, SystemVersionPlatform> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemVersionPlatform>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemVersionPlatform.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemVersionPlatform-objects as value to a dart map
  static Map<String, List<SystemVersionPlatform>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemVersionPlatform>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemVersionPlatform.listFromJson(value);
       });
     }
     return map;
  }
}

