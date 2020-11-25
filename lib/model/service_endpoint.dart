part of docker_client.api;

class ServiceEndpoint {
  
  EndpointSpec spec = null;
  
  List<EndpointPortConfig> ports = [];
  
  List<ServiceEndpointVirtualIPs> virtualIPs = [];
  ServiceEndpoint();

  @override
  String toString() {
    return 'ServiceEndpoint[spec=$spec, ports=$ports, virtualIPs=$virtualIPs, ]';
  }

  ServiceEndpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    spec = (json['Spec'] == null) ?
      null :
      EndpointSpec.fromJson(json['Spec']);
    ports = (json['Ports'] == null) ?
      null :
      EndpointPortConfig.listFromJson(json['Ports']);
    virtualIPs = (json['VirtualIPs'] == null) ?
      null :
      ServiceEndpointVirtualIPs.listFromJson(json['VirtualIPs']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (spec != null)
      json['Spec'] = spec;
    if (ports != null)
      json['Ports'] = ports;
    if (virtualIPs != null)
      json['VirtualIPs'] = virtualIPs;
    return json;
  }

  static List<ServiceEndpoint> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpoint>() : json.map((value) => ServiceEndpoint.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceEndpoint-objects as value to a dart map
  static Map<String, List<ServiceEndpoint>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceEndpoint>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceEndpoint.listFromJson(value);
       });
     }
     return map;
  }
}

