part of docker_client.api;

class TaskSpecPlacementSpread {
  /* label descriptor, such as `engine.labels.az`.  */
  String spreadDescriptor = null;
  TaskSpecPlacementSpread();

  @override
  String toString() {
    return 'TaskSpecPlacementSpread[spreadDescriptor=$spreadDescriptor, ]';
  }

  TaskSpecPlacementSpread.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    spreadDescriptor = json['SpreadDescriptor'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (spreadDescriptor != null)
      json['SpreadDescriptor'] = spreadDescriptor;
    return json;
  }

  static List<TaskSpecPlacementSpread> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecPlacementSpread>() : json.map((value) => TaskSpecPlacementSpread.fromJson(value)).toList();
  }

  static Map<String, TaskSpecPlacementSpread> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecPlacementSpread>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecPlacementSpread.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPlacementSpread-objects as value to a dart map
  static Map<String, List<TaskSpecPlacementSpread>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecPlacementSpread>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecPlacementSpread.listFromJson(value);
       });
     }
     return map;
  }
}

