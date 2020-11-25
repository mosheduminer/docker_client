part of docker_client.api;

class NetworkContainer {
  
  String name = null;
  
  String endpointID = null;
  
  String macAddress = null;
  
  String iPv4Address = null;
  
  String iPv6Address = null;
  NetworkContainer();

  @override
  String toString() {
    return 'NetworkContainer[name=$name, endpointID=$endpointID, macAddress=$macAddress, iPv4Address=$iPv4Address, iPv6Address=$iPv6Address, ]';
  }

  NetworkContainer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    endpointID = json['EndpointID'];
    macAddress = json['MacAddress'];
    iPv4Address = json['IPv4Address'];
    iPv6Address = json['IPv6Address'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (endpointID != null)
      json['EndpointID'] = endpointID;
    if (macAddress != null)
      json['MacAddress'] = macAddress;
    if (iPv4Address != null)
      json['IPv4Address'] = iPv4Address;
    if (iPv6Address != null)
      json['IPv6Address'] = iPv6Address;
    return json;
  }

  static List<NetworkContainer> listFromJson(List<dynamic> json) {
    return json == null ? List<NetworkContainer>() : json.map((value) => NetworkContainer.fromJson(value)).toList();
  }

  static Map<String, NetworkContainer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NetworkContainer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NetworkContainer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkContainer-objects as value to a dart map
  static Map<String, List<NetworkContainer>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NetworkContainer>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NetworkContainer.listFromJson(value);
       });
     }
     return map;
  }
}

