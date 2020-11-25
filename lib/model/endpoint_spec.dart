part of docker_client.api;

class EndpointSpec {
  /* The mode of resolution to use for internal load balancing between tasks.  */
  String mode = "vip";
  //enum modeEnum {  vip,  dnsrr,  };{
  /* List of exposed ports that this service is accessible on from the outside. Ports can only be provided if `vip` resolution mode is used.  */
  List<EndpointPortConfig> ports = [];
  EndpointSpec({this.mode, this.ports});

  @override
  String toString() {
    return 'EndpointSpec[mode=$mode, ports=$ports, ]';
  }

  EndpointSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mode = json['Mode'];
    ports = (json['Ports'] == null)
        ? null
        : EndpointPortConfig.listFromJson(json['Ports']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (mode != null) json['Mode'] = mode;
    if (ports != null) json['Ports'] = ports;
    return json;
  }

  static List<EndpointSpec> listFromJson(List<dynamic> json) {
    return json == null
        ? List<EndpointSpec>()
        : json.map((value) => EndpointSpec.fromJson(value)).toList();
  }

  static Map<String, EndpointSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = EndpointSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EndpointSpec-objects as value to a dart map
  static Map<String, List<EndpointSpec>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<EndpointSpec>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = EndpointSpec.listFromJson(value);
      });
    }
    return map;
  }
}
