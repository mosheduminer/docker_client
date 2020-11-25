part of docker_client.api;

class InlineObject2 {
  /* The network's name. */
  String name = null;
  /* Check for networks with duplicate names. Since Network is primarily keyed based on a random ID and not on the name, and network name is strictly a user-friendly alias to the network which is uniquely identified using ID, there is no guaranteed way to check for duplicates. CheckDuplicate is there to provide a best effort checking of any networks which has the same name but it is not guaranteed to catch all name collisions.  */
  bool checkDuplicate = null;
  /* Name of the network driver plugin to use. */
  String driver = "bridge";
  /* Restrict external access to the network. */
  bool internal = null;
  /* Globally scoped network is manually attachable by regular containers from workers in swarm mode.  */
  bool attachable = null;
  /* Ingress network is the network which provides the routing-mesh in swarm mode.  */
  bool ingress = null;
  
  IPAM ipam = null;
  /* Enable IPv6 on the network. */
  bool enableIPv6 = null;
  /* Network specific options to be used by the drivers. */
  Map<String, String> options = {};
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  InlineObject2();

  @override
  String toString() {
    return 'InlineObject2[name=$name, checkDuplicate=$checkDuplicate, driver=$driver, internal=$internal, attachable=$attachable, ingress=$ingress, IPAM=$ipam, enableIPv6=$enableIPv6, options=$options, labels=$labels, ]';
  }

  InlineObject2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    checkDuplicate = json['CheckDuplicate'];
    driver = json['Driver'];
    internal = json['Internal'];
    attachable = json['Attachable'];
    ingress = json['Ingress'];
    ipam = (json['IPAM'] == null) ?
      null :
      IPAM.fromJson(json['IPAM']);
    enableIPv6 = json['EnableIPv6'];
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
    if (checkDuplicate != null)
      json['CheckDuplicate'] = checkDuplicate;
    if (driver != null)
      json['Driver'] = driver;
    if (internal != null)
      json['Internal'] = internal;
    if (attachable != null)
      json['Attachable'] = attachable;
    if (ingress != null)
      json['Ingress'] = ingress;
    if (ipam != null)
      json['IPAM'] = ipam;
    if (enableIPv6 != null)
      json['EnableIPv6'] = enableIPv6;
    if (options != null)
      json['Options'] = options;
    if (labels != null)
      json['Labels'] = labels;
    return json;
  }

  static List<InlineObject2> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject2>() : json.map((value) => InlineObject2.fromJson(value)).toList();
  }

  static Map<String, InlineObject2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject2.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject2-objects as value to a dart map
  static Map<String, List<InlineObject2>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject2>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject2.listFromJson(value);
       });
     }
     return map;
  }
}

