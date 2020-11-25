part of docker_client.api;

class InlineObject1 {
  /* Detach from the command. */
  bool detach = null;
  /* Allocate a pseudo-TTY. */
  bool tty = null;
  InlineObject1();

  @override
  String toString() {
    return 'InlineObject1[detach=$detach, tty=$tty, ]';
  }

  InlineObject1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    detach = json['Detach'];
    tty = json['Tty'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (detach != null)
      json['Detach'] = detach;
    if (tty != null)
      json['Tty'] = tty;
    return json;
  }

  static List<InlineObject1> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject1>() : json.map((value) => InlineObject1.fromJson(value)).toList();
  }

  static Map<String, InlineObject1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject1-objects as value to a dart map
  static Map<String, List<InlineObject1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject1.listFromJson(value);
       });
     }
     return map;
  }
}

