part of docker_client.api;

class SystemEventsResponseActor {
  /* The ID of the object emitting the event */
  String ID = null;
  /* Various key/value attributes of the object, depending on its type */
  Map<String, String> attributes = {};
  SystemEventsResponseActor();

  @override
  String toString() {
    return 'SystemEventsResponseActor[ID=$ID, attributes=$attributes, ]';
  }

  SystemEventsResponseActor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    attributes = (json['Attributes'] == null) ?
      null :
      (json['Attributes'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    if (attributes != null)
      json['Attributes'] = attributes;
    return json;
  }

  static List<SystemEventsResponseActor> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemEventsResponseActor>() : json.map((value) => SystemEventsResponseActor.fromJson(value)).toList();
  }

  static Map<String, SystemEventsResponseActor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemEventsResponseActor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemEventsResponseActor.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemEventsResponseActor-objects as value to a dart map
  static Map<String, List<SystemEventsResponseActor>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemEventsResponseActor>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemEventsResponseActor.listFromJson(value);
       });
     }
     return map;
  }
}

