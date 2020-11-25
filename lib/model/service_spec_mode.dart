part of docker_client.api;

class ServiceSpecMode {
  
  ServiceSpecModeReplicated replicated = null;
  
  Object global = null;
  ServiceSpecMode();

  @override
  String toString() {
    return 'ServiceSpecMode[replicated=$replicated, global=$global, ]';
  }

  ServiceSpecMode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    replicated = (json['Replicated'] == null) ?
      null :
      ServiceSpecModeReplicated.fromJson(json['Replicated']);
    global = json['Global'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (replicated != null)
      json['Replicated'] = replicated;
    if (global != null)
      json['Global'] = global;
    return json;
  }

  static List<ServiceSpecMode> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceSpecMode>() : json.map((value) => ServiceSpecMode.fromJson(value)).toList();
  }

  static Map<String, ServiceSpecMode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceSpecMode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceSpecMode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecMode-objects as value to a dart map
  static Map<String, List<ServiceSpecMode>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceSpecMode>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceSpecMode.listFromJson(value);
       });
     }
     return map;
  }
}

