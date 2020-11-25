part of docker_client.api;

class InlineObject6 {
  /* Listen address used for inter-manager communication if the node gets promoted to manager, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP).  */
  String listenAddr = null;
  /* Externally reachable address advertised to other nodes. This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the port number from the listen address is used. If `AdvertiseAddr` is not specified, it will be automatically detected when possible.  */
  String advertiseAddr = null;
  /* Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same addres as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster.  */
  String dataPathAddr = null;
  /* Addresses of manager nodes already participating in the swarm.  */
  List<String> remoteAddrs = [];
  /* Secret token for joining this swarm. */
  String joinToken = null;
  InlineObject6();

  @override
  String toString() {
    return 'InlineObject6[listenAddr=$listenAddr, advertiseAddr=$advertiseAddr, dataPathAddr=$dataPathAddr, remoteAddrs=$remoteAddrs, joinToken=$joinToken, ]';
  }

  InlineObject6.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    listenAddr = json['ListenAddr'];
    advertiseAddr = json['AdvertiseAddr'];
    dataPathAddr = json['DataPathAddr'];
    remoteAddrs = (json['RemoteAddrs'] == null) ?
      null :
      (json['RemoteAddrs'] as List).cast<String>();
    joinToken = json['JoinToken'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (listenAddr != null)
      json['ListenAddr'] = listenAddr;
    if (advertiseAddr != null)
      json['AdvertiseAddr'] = advertiseAddr;
    if (dataPathAddr != null)
      json['DataPathAddr'] = dataPathAddr;
    if (remoteAddrs != null)
      json['RemoteAddrs'] = remoteAddrs;
    if (joinToken != null)
      json['JoinToken'] = joinToken;
    return json;
  }

  static List<InlineObject6> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject6>() : json.map((value) => InlineObject6.fromJson(value)).toList();
  }

  static Map<String, InlineObject6> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject6>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject6.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject6-objects as value to a dart map
  static Map<String, List<InlineObject6>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject6>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject6.listFromJson(value);
       });
     }
     return map;
  }
}

