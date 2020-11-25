part of docker_client.api;

class TaskSpecPluginSpec {
  /* The name or 'alias' to use for the plugin. */
  String name = null;
  /* The plugin image reference to use. */
  String remote = null;
  /* Disable the plugin once scheduled. */
  bool disabled = null;
  
  List<InlineObject> pluginPrivilege = [];
  TaskSpecPluginSpec();

  @override
  String toString() {
    return 'TaskSpecPluginSpec[name=$name, remote=$remote, disabled=$disabled, pluginPrivilege=$pluginPrivilege, ]';
  }

  TaskSpecPluginSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    remote = json['Remote'];
    disabled = json['Disabled'];
    pluginPrivilege = (json['PluginPrivilege'] == null) ?
      null :
      InlineObject.listFromJson(json['PluginPrivilege']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (remote != null)
      json['Remote'] = remote;
    if (disabled != null)
      json['Disabled'] = disabled;
    if (pluginPrivilege != null)
      json['PluginPrivilege'] = pluginPrivilege;
    return json;
  }

  static List<TaskSpecPluginSpec> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecPluginSpec>() : json.map((value) => TaskSpecPluginSpec.fromJson(value)).toList();
  }

  static Map<String, TaskSpecPluginSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecPluginSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecPluginSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPluginSpec-objects as value to a dart map
  static Map<String, List<TaskSpecPluginSpec>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecPluginSpec>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecPluginSpec.listFromJson(value);
       });
     }
     return map;
  }
}

