part of docker_client.api;

class SwarmSpecOrchestration {
  /* The number of historic tasks to keep per instance or node. If negative, never remove completed or failed tasks.  */
  int taskHistoryRetentionLimit = null;
  SwarmSpecOrchestration();

  @override
  String toString() {
    return 'SwarmSpecOrchestration[taskHistoryRetentionLimit=$taskHistoryRetentionLimit, ]';
  }

  SwarmSpecOrchestration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    taskHistoryRetentionLimit = json['TaskHistoryRetentionLimit'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (taskHistoryRetentionLimit != null)
      json['TaskHistoryRetentionLimit'] = taskHistoryRetentionLimit;
    return json;
  }

  static List<SwarmSpecOrchestration> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecOrchestration>() : json.map((value) => SwarmSpecOrchestration.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecOrchestration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecOrchestration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecOrchestration.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecOrchestration-objects as value to a dart map
  static Map<String, List<SwarmSpecOrchestration>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecOrchestration>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecOrchestration.listFromJson(value);
       });
     }
     return map;
  }
}

