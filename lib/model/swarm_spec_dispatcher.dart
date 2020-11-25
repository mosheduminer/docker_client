part of docker_client.api;

class SwarmSpecDispatcher {
  /* The delay for an agent to send a heartbeat to the dispatcher.  */
  int heartbeatPeriod = null;
  SwarmSpecDispatcher();

  @override
  String toString() {
    return 'SwarmSpecDispatcher[heartbeatPeriod=$heartbeatPeriod, ]';
  }

  SwarmSpecDispatcher.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    heartbeatPeriod = json['HeartbeatPeriod'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (heartbeatPeriod != null)
      json['HeartbeatPeriod'] = heartbeatPeriod;
    return json;
  }

  static List<SwarmSpecDispatcher> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecDispatcher>() : json.map((value) => SwarmSpecDispatcher.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecDispatcher> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecDispatcher>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecDispatcher.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecDispatcher-objects as value to a dart map
  static Map<String, List<SwarmSpecDispatcher>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecDispatcher>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecDispatcher.listFromJson(value);
       });
     }
     return map;
  }
}

