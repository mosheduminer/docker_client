part of docker_client.api;

class TaskSpecContainerSpecDNSConfig {
  /* The IP addresses of the name servers. */
  List<String> nameservers = [];
  /* A search list for host-name lookup. */
  List<String> search = [];
  /* A list of internal resolver variables to be modified (e.g., `debug`, `ndots:3`, etc.).  */
  List<String> options = [];
  TaskSpecContainerSpecDNSConfig();

  @override
  String toString() {
    return 'TaskSpecContainerSpecDNSConfig[nameservers=$nameservers, search=$search, options=$options, ]';
  }

  TaskSpecContainerSpecDNSConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nameservers = (json['Nameservers'] == null) ?
      null :
      (json['Nameservers'] as List).cast<String>();
    search = (json['Search'] == null) ?
      null :
      (json['Search'] as List).cast<String>();
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nameservers != null)
      json['Nameservers'] = nameservers;
    if (search != null)
      json['Search'] = search;
    if (options != null)
      json['Options'] = options;
    return json;
  }

  static List<TaskSpecContainerSpecDNSConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecContainerSpecDNSConfig>() : json.map((value) => TaskSpecContainerSpecDNSConfig.fromJson(value)).toList();
  }

  static Map<String, TaskSpecContainerSpecDNSConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecContainerSpecDNSConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecContainerSpecDNSConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecDNSConfig-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecDNSConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecContainerSpecDNSConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecContainerSpecDNSConfig.listFromJson(value);
       });
     }
     return map;
  }
}

