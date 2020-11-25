part of docker_client.api;

class TaskSpecRestartPolicy {
  /* Condition for restart. */
  String condition = null;
  //enum conditionEnum {  none,  on-failure,  any,  };{
  /* Delay between restart attempts. */
  int delay = null;
  /* Maximum attempts to restart a given container before giving up (default value is 0, which is ignored).  */
  int maxAttempts = 0;
  /* Windows is the time window used to evaluate the restart policy (default value is 0, which is unbounded).  */
  int window = 0;
  TaskSpecRestartPolicy();

  @override
  String toString() {
    return 'TaskSpecRestartPolicy[condition=$condition, delay=$delay, maxAttempts=$maxAttempts, window=$window, ]';
  }

  TaskSpecRestartPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    condition = json['Condition'];
    delay = json['Delay'];
    maxAttempts = json['MaxAttempts'];
    window = json['Window'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (condition != null)
      json['Condition'] = condition;
    if (delay != null)
      json['Delay'] = delay;
    if (maxAttempts != null)
      json['MaxAttempts'] = maxAttempts;
    if (window != null)
      json['Window'] = window;
    return json;
  }

  static List<TaskSpecRestartPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSpecRestartPolicy>() : json.map((value) => TaskSpecRestartPolicy.fromJson(value)).toList();
  }

  static Map<String, TaskSpecRestartPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSpecRestartPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSpecRestartPolicy.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskSpecRestartPolicy-objects as value to a dart map
  static Map<String, List<TaskSpecRestartPolicy>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskSpecRestartPolicy>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskSpecRestartPolicy.listFromJson(value);
       });
     }
     return map;
  }
}

