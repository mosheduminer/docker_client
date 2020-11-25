part of docker_client.api;

class Network {
  
  String name = null;
  
  String id = null;
  
  String created = null;
  
  String scope = null;
  
  String driver = null;
  
  bool enableIPv6 = null;
  
  IPAM ipam = null;
  
  bool internal = null;
  
  bool attachable = null;
  
  bool ingress = null;
  
  Map<String, NetworkContainer> containers = {};
  
  Map<String, String> options = {};
  
  Map<String, String> labels = {};
  Network();

  @override
  String toString() {
    return 'Network[name=$name, id=$id, created=$created, scope=$scope, driver=$driver, enableIPv6=$enableIPv6, IPAM=$ipam, internal=$internal, attachable=$attachable, ingress=$ingress, containers=$containers, options=$options, labels=$labels, ]';
  }

  Network.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    id = json['Id'];
    created = json['Created'];
    scope = json['Scope'];
    driver = json['Driver'];
    enableIPv6 = json['EnableIPv6'];
    ipam = (json['IPAM'] == null) ?
      null :
      IPAM.fromJson(json['IPAM']);
    internal = json['Internal'];
    attachable = json['Attachable'];
    ingress = json['Ingress'];
    containers = (json['Containers'] == null) ?
      null :
      NetworkContainer.mapFromJson(json['Containers']);
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as Map).cast<String, String>();
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (id != null)
      json['Id'] = id;
    if (created != null)
      json['Created'] = created;
    if (scope != null)
      json['Scope'] = scope;
    if (driver != null)
      json['Driver'] = driver;
    if (enableIPv6 != null)
      json['EnableIPv6'] = enableIPv6;
    if (ipam != null)
      json['IPAM'] = ipam;
    if (internal != null)
      json['Internal'] = internal;
    if (attachable != null)
      json['Attachable'] = attachable;
    if (ingress != null)
      json['Ingress'] = ingress;
    if (containers != null)
      json['Containers'] = containers;
    if (options != null)
      json['Options'] = options;
    if (labels != null)
      json['Labels'] = labels;
    return json;
  }

  static List<Network> listFromJson(List<dynamic> json) {
    return json == null ? List<Network>() : json.map((value) => Network.fromJson(value)).toList();
  }

  static Map<String, Network> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Network>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Network.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Network-objects as value to a dart map
  static Map<String, List<Network>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Network>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Network.listFromJson(value);
       });
     }
     return map;
  }
}

