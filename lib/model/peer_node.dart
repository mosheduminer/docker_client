part of docker_client.api;

class PeerNode {
  /* Unique identifier of for this node in the swarm. */
  String nodeID = null;
  /* IP address and ports at which this node can be reached.  */
  String addr = null;
  PeerNode();

  @override
  String toString() {
    return 'PeerNode[nodeID=$nodeID, addr=$addr, ]';
  }

  PeerNode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodeID = json['NodeID'];
    addr = json['Addr'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nodeID != null)
      json['NodeID'] = nodeID;
    if (addr != null)
      json['Addr'] = addr;
    return json;
  }

  static List<PeerNode> listFromJson(List<dynamic> json) {
    return json == null ? List<PeerNode>() : json.map((value) => PeerNode.fromJson(value)).toList();
  }

  static Map<String, PeerNode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PeerNode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PeerNode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PeerNode-objects as value to a dart map
  static Map<String, List<PeerNode>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PeerNode>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PeerNode.listFromJson(value);
       });
     }
     return map;
  }
}

