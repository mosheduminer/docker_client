part of docker_client.api;

class PluginConfigUser {
  
  int UID = null;
  
  int GID = null;
  PluginConfigUser();

  @override
  String toString() {
    return 'PluginConfigUser[UID=$UID, GID=$GID, ]';
  }

  PluginConfigUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    UID = json['UID'];
    GID = json['GID'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (UID != null)
      json['UID'] = UID;
    if (GID != null)
      json['GID'] = GID;
    return json;
  }

  static List<PluginConfigUser> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfigUser>() : json.map((value) => PluginConfigUser.fromJson(value)).toList();
  }

  static Map<String, PluginConfigUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfigUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfigUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfigUser-objects as value to a dart map
  static Map<String, List<PluginConfigUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfigUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfigUser.listFromJson(value);
       });
     }
     return map;
  }
}

