part of docker_client.api;

class PluginConfigRootfs {
  
  String type = null;
  
  List<String> diffIds = [];
  PluginConfigRootfs();

  @override
  String toString() {
    return 'PluginConfigRootfs[type=$type, diffIds=$diffIds, ]';
  }

  PluginConfigRootfs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    diffIds = (json['diff_ids'] == null) ?
      null :
      (json['diff_ids'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (diffIds != null)
      json['diff_ids'] = diffIds;
    return json;
  }

  static List<PluginConfigRootfs> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfigRootfs>() : json.map((value) => PluginConfigRootfs.fromJson(value)).toList();
  }

  static Map<String, PluginConfigRootfs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfigRootfs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfigRootfs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginConfigRootfs-objects as value to a dart map
  static Map<String, List<PluginConfigRootfs>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginConfigRootfs>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginConfigRootfs.listFromJson(value);
       });
     }
     return map;
  }
}

