part of docker_client.api;

class Node {
  
  String ID = null;
  
  ObjectVersion version = null;
  /* Date and time at which the node was added to the swarm in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String createdAt = null;
  /* Date and time at which the node was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String updatedAt = null;
  
  NodeSpec spec = null;
  
  NodeDescription description = null;
  
  NodeStatus status = null;
  
  ManagerStatus managerStatus = null;
  Node();

  @override
  String toString() {
    return 'Node[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, description=$description, status=$status, managerStatus=$managerStatus, ]';
  }

  Node.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    version = (json['Version'] == null) ?
      null :
      ObjectVersion.fromJson(json['Version']);
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    spec = (json['Spec'] == null) ?
      null :
      NodeSpec.fromJson(json['Spec']);
    description = (json['Description'] == null) ?
      null :
      NodeDescription.fromJson(json['Description']);
    status = (json['Status'] == null) ?
      null :
      NodeStatus.fromJson(json['Status']);
    managerStatus = (json['ManagerStatus'] == null) ?
      null :
      ManagerStatus.fromJson(json['ManagerStatus']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    if (version != null)
      json['Version'] = version;
    if (createdAt != null)
      json['CreatedAt'] = createdAt;
    if (updatedAt != null)
      json['UpdatedAt'] = updatedAt;
    if (spec != null)
      json['Spec'] = spec;
    if (description != null)
      json['Description'] = description;
    if (status != null)
      json['Status'] = status;
      json['ManagerStatus'] = managerStatus;
    return json;
  }

  static List<Node> listFromJson(List<dynamic> json) {
    return json == null ? List<Node>() : json.map((value) => Node.fromJson(value)).toList();
  }

  static Map<String, Node> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Node>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Node.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Node-objects as value to a dart map
  static Map<String, List<Node>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Node>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Node.listFromJson(value);
       });
     }
     return map;
  }
}

