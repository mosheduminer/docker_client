part of docker_client.api;

class InlineObject4 {
  /* The ID or name of the container to disconnect from the network.  */
  String container = null;
  /* Force the container to disconnect from the network.  */
  bool force = null;
  InlineObject4();

  @override
  String toString() {
    return 'InlineObject4[container=$container, force=$force, ]';
  }

  InlineObject4.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    container = json['Container'];
    force = json['Force'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (container != null)
      json['Container'] = container;
    if (force != null)
      json['Force'] = force;
    return json;
  }

  static List<InlineObject4> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject4>() : json.map((value) => InlineObject4.fromJson(value)).toList();
  }

  static Map<String, InlineObject4> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject4>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject4.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject4-objects as value to a dart map
  static Map<String, List<InlineObject4>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject4>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject4.listFromJson(value);
       });
     }
     return map;
  }
}

