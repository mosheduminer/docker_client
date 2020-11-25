part of docker_client.api;

class TaskSpecResources {
  
  ResourceObject limits = null;
  
  ResourceObject reservation = null;
  TaskSpecResources();

  @override
  String toString() {
    return 'TaskSpecResources[limits=$limits, reservation=$reservation, ]';
  }

  TaskSpecResources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    limits = (json['Limits'] == null) ?
      null :
      ResourceObject.fromJson(json['Limits']);
    reservation = (json['Reservation'] == null) ?
      null :
      ResourceObject.fromJson(json['Reservation']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (limits != null)
      json['Limits'] = limits;
    if (reservation != null)
      json['Reservation'] = reservation;
    return json;
  }

  static List<TaskSpecResources> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecResources>() : json.map((value) => TaskSpecResources.fromJson(value)).toList();
  }

  static Map<String, TaskSpecResources> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecResources>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecResources.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecResources-objects as value to a dart map
  static Map<String, List<TaskSpecResources>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecResources>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecResources.listFromJson(value);
       });
     }
     return map;
  }
}

