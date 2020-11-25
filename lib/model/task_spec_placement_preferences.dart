part of docker_client.api;

class TaskSpecPlacementPreferences {
  
  TaskSpecPlacementSpread spread = null;
  TaskSpecPlacementPreferences();

  @override
  String toString() {
    return 'TaskSpecPlacementPreferences[spread=$spread, ]';
  }

  TaskSpecPlacementPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    spread = (json['Spread'] == null) ?
      null :
      TaskSpecPlacementSpread.fromJson(json['Spread']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (spread != null)
      json['Spread'] = spread;
    return json;
  }

  static List<TaskSpecPlacementPreferences> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecPlacementPreferences>() : json.map((value) => TaskSpecPlacementPreferences.fromJson(value)).toList();
  }

  static Map<String, TaskSpecPlacementPreferences> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecPlacementPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecPlacementPreferences.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecPlacementPreferences-objects as value to a dart map
  static Map<String, List<TaskSpecPlacementPreferences>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecPlacementPreferences>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecPlacementPreferences.listFromJson(value);
       });
     }
     return map;
  }
}

