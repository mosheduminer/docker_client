part of docker_client.api;

class InlineObject5 {
  /* Listen address used for inter-manager communication, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP). This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the default swarm listening port is used.  */
  String listenAddr = null;
  /* Externally reachable address advertised to other nodes. This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the port number from the listen address is used. If `AdvertiseAddr` is not specified, it will be automatically detected when possible.  */
  String advertiseAddr = null;
  /* Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same address as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other  nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster.  */
  String dataPathAddr = null;
  /* DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. if no port is set or is set to 0, default port 4789 will be used.  */
  int dataPathPort = null;
  /* Default Address Pool specifies default subnet pools for global scope networks.  */
  List<String> defaultAddrPool = [];
  /* Force creation of a new swarm. */
  bool forceNewCluster = null;
  /* SubnetSize specifies the subnet size of the networks created from the default subnet pool.  */
  int subnetSize = null;
  
  SwarmSpec spec = null;
  InlineObject5();

  @override
  String toString() {
    return 'InlineObject5[listenAddr=$listenAddr, advertiseAddr=$advertiseAddr, dataPathAddr=$dataPathAddr, dataPathPort=$dataPathPort, defaultAddrPool=$defaultAddrPool, forceNewCluster=$forceNewCluster, subnetSize=$subnetSize, spec=$spec, ]';
  }

  InlineObject5.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    listenAddr = json['ListenAddr'];
    advertiseAddr = json['AdvertiseAddr'];
    dataPathAddr = json['DataPathAddr'];
    dataPathPort = json['DataPathPort'];
    defaultAddrPool = (json['DefaultAddrPool'] == null) ?
      null :
      (json['DefaultAddrPool'] as List).cast<String>();
    forceNewCluster = json['ForceNewCluster'];
    subnetSize = json['SubnetSize'];
    spec = (json['Spec'] == null) ?
      null :
      SwarmSpec.fromJson(json['Spec']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (listenAddr != null)
      json['ListenAddr'] = listenAddr;
    if (advertiseAddr != null)
      json['AdvertiseAddr'] = advertiseAddr;
    if (dataPathAddr != null)
      json['DataPathAddr'] = dataPathAddr;
    if (dataPathPort != null)
      json['DataPathPort'] = dataPathPort;
    if (defaultAddrPool != null)
      json['DefaultAddrPool'] = defaultAddrPool;
    if (forceNewCluster != null)
      json['ForceNewCluster'] = forceNewCluster;
    if (subnetSize != null)
      json['SubnetSize'] = subnetSize;
    if (spec != null)
      json['Spec'] = spec;
    return json;
  }

  static List<InlineObject5> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject5>() : json.map((value) => InlineObject5.fromJson(value)).toList();
  }

  static Map<String, InlineObject5> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject5>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject5.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject5-objects as value to a dart map
  static Map<String, List<InlineObject5>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject5>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject5.listFromJson(value);
       });
     }
     return map;
  }
}

