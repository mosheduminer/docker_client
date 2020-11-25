part of docker_client.api;

class EndpointIPAMConfig {
  
  String iPv4Address = null;
  
  String iPv6Address = null;
  
  List<String> linkLocalIPs = [];
  EndpointIPAMConfig();

  @override
  String toString() {
    return 'EndpointIPAMConfig[iPv4Address=$iPv4Address, iPv6Address=$iPv6Address, linkLocalIPs=$linkLocalIPs, ]';
  }

  EndpointIPAMConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    iPv4Address = json['IPv4Address'];
    iPv6Address = json['IPv6Address'];
    linkLocalIPs = (json['LinkLocalIPs'] == null) ?
      null :
      (json['LinkLocalIPs'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (iPv4Address != null)
      json['IPv4Address'] = iPv4Address;
    if (iPv6Address != null)
      json['IPv6Address'] = iPv6Address;
    if (linkLocalIPs != null)
      json['LinkLocalIPs'] = linkLocalIPs;
    return json;
  }

  static List<EndpointIPAMConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<EndpointIPAMConfig>() : json.map((value) => EndpointIPAMConfig.fromJson(value)).toList();
  }

  static Map<String, EndpointIPAMConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointIPAMConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EndpointIPAMConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EndpointIPAMConfig-objects as value to a dart map
  static Map<String, List<EndpointIPAMConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EndpointIPAMConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EndpointIPAMConfig.listFromJson(value);
       });
     }
     return map;
  }
}

