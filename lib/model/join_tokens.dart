part of docker_client.api;

class JoinTokens {
  /* The token workers can use to join the swarm.  */
  String worker = null;
  /* The token managers can use to join the swarm.  */
  String manager = null;
  JoinTokens();

  @override
  String toString() {
    return 'JoinTokens[worker=$worker, manager=$manager, ]';
  }

  JoinTokens.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    worker = json['Worker'];
    manager = json['Manager'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (worker != null)
      json['Worker'] = worker;
    if (manager != null)
      json['Manager'] = manager;
    return json;
  }

  static List<JoinTokens> listFromJson(List<dynamic> json) {
    return json == null ? List<JoinTokens>() : json.map((value) => JoinTokens.fromJson(value)).toList();
  }

  static Map<String, JoinTokens> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JoinTokens>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JoinTokens.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of JoinTokens-objects as value to a dart map
  static Map<String, List<JoinTokens>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<JoinTokens>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = JoinTokens.listFromJson(value);
       });
     }
     return map;
  }
}

