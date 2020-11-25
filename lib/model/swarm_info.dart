part of docker_client.api;

class SwarmInfo {
  /* Unique identifier of for this node in the swarm. */
  String nodeID = "";
  /* IP address at which this node can be reached by other nodes in the swarm.  */
  String nodeAddr = "";
  
  LocalNodeState localNodeState = null;
  //enum localNodeStateEnum {  ,  inactive,  pending,  active,  error,  locked,  };{
  
  bool controlAvailable = false;
  
  String error = "";
  /* List of ID's and addresses of other managers in the swarm.  */
  List<PeerNode> remoteManagers = [];
  /* Total number of nodes in the swarm. */
  int nodes = null;
  /* Total number of managers in the swarm. */
  int managers = null;
  
  ClusterInfo cluster = null;
  SwarmInfo();

  @override
  String toString() {
    return 'SwarmInfo[nodeID=$nodeID, nodeAddr=$nodeAddr, localNodeState=$localNodeState, controlAvailable=$controlAvailable, error=$error, remoteManagers=$remoteManagers, nodes=$nodes, managers=$managers, cluster=$cluster, ]';
  }

  SwarmInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodeID = json['NodeID'];
    nodeAddr = json['NodeAddr'];
    localNodeState = (json['LocalNodeState'] == null) ?
      null :
      LocalNodeState.fromJson(json['LocalNodeState']);
    controlAvailable = json['ControlAvailable'];
    error = json['Error'];
    remoteManagers = (json['RemoteManagers'] == null) ?
      null :
      PeerNode.listFromJson(json['RemoteManagers']);
    nodes = json['Nodes'];
    managers = json['Managers'];
    cluster = (json['Cluster'] == null) ?
      null :
      ClusterInfo.fromJson(json['Cluster']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nodeID != null)
      json['NodeID'] = nodeID;
    if (nodeAddr != null)
      json['NodeAddr'] = nodeAddr;
    if (localNodeState != null)
      json['LocalNodeState'] = localNodeState;
    if (controlAvailable != null)
      json['ControlAvailable'] = controlAvailable;
    if (error != null)
      json['Error'] = error;
      json['RemoteManagers'] = remoteManagers;
      json['Nodes'] = nodes;
      json['Managers'] = managers;
      json['Cluster'] = cluster;
    return json;
  }

  static List<SwarmInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmInfo>() : json.map((value) => SwarmInfo.fromJson(value)).toList();
  }

  static Map<String, SwarmInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmInfo-objects as value to a dart map
  static Map<String, List<SwarmInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmInfo.listFromJson(value);
       });
     }
     return map;
  }
}

