part of docker_client.api;

class PortBinding {
  /* Host IP address that the container's port is mapped to. */
  String hostIp = null;
  /* Host port number that the container's port is mapped to. */
  String hostPort = null;
  PortBinding();

  @override
  String toString() {
    return 'PortBinding[hostIp=$hostIp, hostPort=$hostPort, ]';
  }

  PortBinding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hostIp = json['HostIp'];
    hostPort = json['HostPort'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hostIp != null)
      json['HostIp'] = hostIp;
    if (hostPort != null)
      json['HostPort'] = hostPort;
    return json;
  }

  static List<PortBinding> listFromJson(List<dynamic> json) {
    return json == null ? List<PortBinding>() : json.map((value) => PortBinding.fromJson(value)).toList();
  }

  static Map<String, PortBinding> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PortBinding>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PortBinding.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PortBinding-objects as value to a dart map
  static Map<String, List<PortBinding>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PortBinding>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PortBinding.listFromJson(value);
       });
     }
     return map;
  }
}

