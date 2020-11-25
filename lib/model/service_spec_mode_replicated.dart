part of docker_client.api;

class ServiceSpecModeReplicated {
  
  int replicas = null;
  ServiceSpecModeReplicated();

  @override
  String toString() {
    return 'ServiceSpecModeReplicated[replicas=$replicas, ]';
  }

  ServiceSpecModeReplicated.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    replicas = json['Replicas'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (replicas != null)
      json['Replicas'] = replicas;
    return json;
  }

  static List<ServiceSpecModeReplicated> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceSpecModeReplicated>() : json.map((value) => ServiceSpecModeReplicated.fromJson(value)).toList();
  }

  static Map<String, ServiceSpecModeReplicated> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceSpecModeReplicated>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceSpecModeReplicated.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecModeReplicated-objects as value to a dart map
  static Map<String, List<ServiceSpecModeReplicated>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceSpecModeReplicated>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceSpecModeReplicated.listFromJson(value);
       });
     }
     return map;
  }
}

