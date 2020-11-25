part of docker_client.api;

class ObjectVersion {
  
  int index = null;
  ObjectVersion();

  @override
  String toString() {
    return 'ObjectVersion[index=$index, ]';
  }

  ObjectVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    index = json['Index'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (index != null)
      json['Index'] = index;
    return json;
  }

  static List<ObjectVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<ObjectVersion>() : json.map((value) => ObjectVersion.fromJson(value)).toList();
  }

  static Map<String, ObjectVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ObjectVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ObjectVersion.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ObjectVersion-objects as value to a dart map
  static Map<String, List<ObjectVersion>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ObjectVersion>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ObjectVersion.listFromJson(value);
       });
     }
     return map;
  }
}

