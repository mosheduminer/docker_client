part of docker_client.api;

class PluginPrivilegeItem {
  
  String name = null;
  
  String description = null;
  
  List<String> value = [];
  PluginPrivilegeItem();

  @override
  String toString() {
    return 'PluginPrivilegeItem[name=$name, description=$description, value=$value, ]';
  }

  PluginPrivilegeItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    description = json['Description'];
    value = (json['Value'] == null) ?
      null :
      (json['Value'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (description != null)
      json['Description'] = description;
    if (value != null)
      json['Value'] = value;
    return json;
  }

  static List<PluginPrivilegeItem> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginPrivilegeItem>() : json.map((value) => PluginPrivilegeItem.fromJson(value)).toList();
  }

  static Map<String, PluginPrivilegeItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginPrivilegeItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginPrivilegeItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginPrivilegeItem-objects as value to a dart map
  static Map<String, List<PluginPrivilegeItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginPrivilegeItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginPrivilegeItem.listFromJson(value);
       });
     }
     return map;
  }
}

