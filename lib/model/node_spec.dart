part of docker_client.api;

class NodeSpec {
  /* Name for the node. */
  String name = null;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  /* Role of the node. */
  String role = null;
  //enum roleEnum {  worker,  manager,  };{
  /* Availability of the node. */
  String availability = null;
  //enum availabilityEnum {  active,  pause,  drain,  };{
  NodeSpec();

  @override
  String toString() {
    return 'NodeSpec[name=$name, labels=$labels, role=$role, availability=$availability, ]';
  }

  NodeSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
    role = json['Role'];
    availability = json['Availability'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (labels != null)
      json['Labels'] = labels;
    if (role != null)
      json['Role'] = role;
    if (availability != null)
      json['Availability'] = availability;
    return json;
  }

  static List<NodeSpec> listFromJson(List<dynamic> json) {
    return json == null ? List<NodeSpec>() : json.map((value) => NodeSpec.fromJson(value)).toList();
  }

  static Map<String, NodeSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NodeSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NodeSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NodeSpec-objects as value to a dart map
  static Map<String, List<NodeSpec>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NodeSpec>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NodeSpec.listFromJson(value);
       });
     }
     return map;
  }
}

