part of docker_client.api;

class ServiceEndpointVirtualIPs {
  
  String networkID = null;
  
  String addr = null;
  ServiceEndpointVirtualIPs();

  @override
  String toString() {
    return 'ServiceEndpointVirtualIPs[networkID=$networkID, addr=$addr, ]';
  }

  ServiceEndpointVirtualIPs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    networkID = json['NetworkID'];
    addr = json['Addr'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (networkID != null)
      json['NetworkID'] = networkID;
    if (addr != null)
      json['Addr'] = addr;
    return json;
  }

  static List<ServiceEndpointVirtualIPs> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointVirtualIPs>() : json.map((value) => ServiceEndpointVirtualIPs.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointVirtualIPs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointVirtualIPs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointVirtualIPs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceEndpointVirtualIPs-objects as value to a dart map
  static Map<String, List<ServiceEndpointVirtualIPs>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceEndpointVirtualIPs>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceEndpointVirtualIPs.listFromJson(value);
       });
     }
     return map;
  }
}

