part of docker_client.api;

class SwarmAllOf {
  
  JoinTokens joinTokens = null;
  SwarmAllOf();

  @override
  String toString() {
    return 'SwarmAllOf[joinTokens=$joinTokens, ]';
  }

  SwarmAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    joinTokens = (json['JoinTokens'] == null) ?
      null :
      JoinTokens.fromJson(json['JoinTokens']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (joinTokens != null)
      json['JoinTokens'] = joinTokens;
    return json;
  }

  static List<SwarmAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmAllOf>() : json.map((value) => SwarmAllOf.fromJson(value)).toList();
  }

  static Map<String, SwarmAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmAllOf-objects as value to a dart map
  static Map<String, List<SwarmAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

