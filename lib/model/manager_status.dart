part of docker_client.api;

class ManagerStatus {
  
  bool leader = false;
  
  Reachability reachability = null;
  //enum reachabilityEnum {  unknown,  unreachable,  reachable,  };{
  /* The IP address and port at which the manager is reachable.  */
  String addr = null;
  ManagerStatus();

  @override
  String toString() {
    return 'ManagerStatus[leader=$leader, reachability=$reachability, addr=$addr, ]';
  }

  ManagerStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    leader = json['Leader'];
    reachability = (json['Reachability'] == null) ?
      null :
      Reachability.fromJson(json['Reachability']);
    addr = json['Addr'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (leader != null)
      json['Leader'] = leader;
    if (reachability != null)
      json['Reachability'] = reachability;
    if (addr != null)
      json['Addr'] = addr;
    return json;
  }

  static List<ManagerStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<ManagerStatus>() : json.map((value) => ManagerStatus.fromJson(value)).toList();
  }

  static Map<String, ManagerStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ManagerStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ManagerStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ManagerStatus-objects as value to a dart map
  static Map<String, List<ManagerStatus>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ManagerStatus>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ManagerStatus.listFromJson(value);
       });
     }
     return map;
  }
}

