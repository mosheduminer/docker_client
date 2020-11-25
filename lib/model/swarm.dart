part of docker_client.api;

class Swarm {
  /* The ID of the swarm. */
  String ID = null;
  
  ObjectVersion version = null;
  /* Date and time at which the swarm was initialised in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String createdAt = null;
  /* Date and time at which the swarm was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String updatedAt = null;
  
  SwarmSpec spec = null;
  
  TLSInfo tLSInfo = null;
  /* Whether there is currently a root CA rotation in progress for the swarm  */
  bool rootRotationInProgress = null;
  /* DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. If no port is set or is set to 0, the default port (4789) is used.  */
  int dataPathPort = null;
  /* Default Address Pool specifies default subnet pools for global scope networks.  */
  List<String> defaultAddrPool = [];
  /* SubnetSize specifies the subnet size of the networks created from the default subnet pool.  */
  int subnetSize = null;
  
  JoinTokens joinTokens = null;
  Swarm();

  @override
  String toString() {
    return 'Swarm[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, tLSInfo=$tLSInfo, rootRotationInProgress=$rootRotationInProgress, dataPathPort=$dataPathPort, defaultAddrPool=$defaultAddrPool, subnetSize=$subnetSize, joinTokens=$joinTokens, ]';
  }

  Swarm.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    version = (json['Version'] == null) ?
      null :
      ObjectVersion.fromJson(json['Version']);
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    spec = (json['Spec'] == null) ?
      null :
      SwarmSpec.fromJson(json['Spec']);
    tLSInfo = (json['TLSInfo'] == null) ?
      null :
      TLSInfo.fromJson(json['TLSInfo']);
    rootRotationInProgress = json['RootRotationInProgress'];
    dataPathPort = json['DataPathPort'];
    defaultAddrPool = (json['DefaultAddrPool'] == null) ?
      null :
      (json['DefaultAddrPool'] as List).cast<String>();
    subnetSize = json['SubnetSize'];
    joinTokens = (json['JoinTokens'] == null) ?
      null :
      JoinTokens.fromJson(json['JoinTokens']);
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
    if (tLSInfo != null)
      json['TLSInfo'] = tLSInfo;
    if (rootRotationInProgress != null)
      json['RootRotationInProgress'] = rootRotationInProgress;
    if (dataPathPort != null)
      json['DataPathPort'] = dataPathPort;
    if (defaultAddrPool != null)
      json['DefaultAddrPool'] = defaultAddrPool;
    if (subnetSize != null)
      json['SubnetSize'] = subnetSize;
    if (joinTokens != null)
      json['JoinTokens'] = joinTokens;
    return json;
  }

  static List<Swarm> listFromJson(List<dynamic> json) {
    return json == null ? List<Swarm>() : json.map((value) => Swarm.fromJson(value)).toList();
  }

  static Map<String, Swarm> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Swarm>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Swarm.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Swarm-objects as value to a dart map
  static Map<String, List<Swarm>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Swarm>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Swarm.listFromJson(value);
       });
     }
     return map;
  }
}

