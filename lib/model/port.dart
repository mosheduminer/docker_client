part of docker_client.api;

class Port {
  /* Host IP address that the container's port is mapped to */
  String IP = null;
  /* Port on the container */
  int privatePort = null;
  /* Port exposed on the host */
  int publicPort = null;
  
  String type = null;
  //enum typeEnum {  tcp,  udp,  sctp,  };{
  Port();

  @override
  String toString() {
    return 'Port[IP=$IP, privatePort=$privatePort, publicPort=$publicPort, type=$type, ]';
  }

  Port.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    IP = json['IP'];
    privatePort = json['PrivatePort'];
    publicPort = json['PublicPort'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (IP != null)
      json['IP'] = IP;
    if (privatePort != null)
      json['PrivatePort'] = privatePort;
    if (publicPort != null)
      json['PublicPort'] = publicPort;
    if (type != null)
      json['Type'] = type;
    return json;
  }

  static List<Port> listFromJson(List<dynamic> json) {
    return json == null ? List<Port>() : json.map((value) => Port.fromJson(value)).toList();
  }

  static Map<String, Port> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Port>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Port.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Port-objects as value to a dart map
  static Map<String, List<Port>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Port>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Port.listFromJson(value);
       });
     }
     return map;
  }
}

