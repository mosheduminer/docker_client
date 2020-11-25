part of docker_client.api;

class SystemEventsResponse {
  /* The type of object emitting the event */
  String type = null;
  /* The type of event */
  String action = null;
  
  SystemEventsResponseActor actor = null;
  /* Timestamp of event */
  int time = null;
  /* Timestamp of event, with nanosecond accuracy */
  int timeNano = null;
  SystemEventsResponse();

  @override
  String toString() {
    return 'SystemEventsResponse[type=$type, action=$action, actor=$actor, time=$time, timeNano=$timeNano, ]';
  }

  SystemEventsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['Type'];
    action = json['Action'];
    actor = (json['Actor'] == null) ?
      null :
      SystemEventsResponseActor.fromJson(json['Actor']);
    time = json['time'];
    timeNano = json['timeNano'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['Type'] = type;
    if (action != null)
      json['Action'] = action;
    if (actor != null)
      json['Actor'] = actor;
    if (time != null)
      json['time'] = time;
    if (timeNano != null)
      json['timeNano'] = timeNano;
    return json;
  }

  static List<SystemEventsResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemEventsResponse>() : json.map((value) => SystemEventsResponse.fromJson(value)).toList();
  }

  static Map<String, SystemEventsResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemEventsResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemEventsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemEventsResponse-objects as value to a dart map
  static Map<String, List<SystemEventsResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemEventsResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemEventsResponse.listFromJson(value);
       });
     }
     return map;
  }
}

