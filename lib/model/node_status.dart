part of docker_client.api;

class NodeStatus {
  
  NodeState state = null;
  //enum stateEnum {  unknown,  down,  ready,  disconnected,  };{
  
  String message = null;
  /* IP address of the node. */
  String addr = null;
  NodeStatus();

  @override
  String toString() {
    return 'NodeStatus[state=$state, message=$message, addr=$addr, ]';
  }

  NodeStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = (json['State'] == null) ?
      null :
      NodeState.fromJson(json['State']);
    message = json['Message'];
    addr = json['Addr'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (state != null)
      json['State'] = state;
    if (message != null)
      json['Message'] = message;
    if (addr != null)
      json['Addr'] = addr;
    return json;
  }

  static List<NodeStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<NodeStatus>() : json.map((value) => NodeStatus.fromJson(value)).toList();
  }

  static Map<String, NodeStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NodeStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NodeStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NodeStatus-objects as value to a dart map
  static Map<String, List<NodeStatus>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NodeStatus>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NodeStatus.listFromJson(value);
       });
     }
     return map;
  }
}

