part of docker_client.api;

class ServiceSpecUpdateConfig {
  /* Maximum number of tasks to be updated in one iteration (0 means unlimited parallelism).  */
  int parallelism = null;
  /* Amount of time between updates, in nanoseconds. */
  int delay = null;
  /* Action to take if an updated task fails to run, or stops running during the update.  */
  String failureAction = null;
  //enum failureActionEnum {  continue,  pause,  rollback,  };{
  /* Amount of time to monitor each updated task for failures, in nanoseconds.  */
  int monitor = null;
  /* The fraction of tasks that may fail during an update before the failure action is invoked, specified as a floating point number between 0 and 1.  */
  num maxFailureRatio = null;
  /* The order of operations when rolling out an updated task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.  */
  String order = null;
  //enum orderEnum {  stop-first,  start-first,  };{
  ServiceSpecUpdateConfig();

  @override
  String toString() {
    return 'ServiceSpecUpdateConfig[parallelism=$parallelism, delay=$delay, failureAction=$failureAction, monitor=$monitor, maxFailureRatio=$maxFailureRatio, order=$order, ]';
  }

  ServiceSpecUpdateConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    parallelism = json['Parallelism'];
    delay = json['Delay'];
    failureAction = json['FailureAction'];
    monitor = json['Monitor'];
    maxFailureRatio = json['MaxFailureRatio'];
    order = json['Order'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (parallelism != null)
      json['Parallelism'] = parallelism;
    if (delay != null)
      json['Delay'] = delay;
    if (failureAction != null)
      json['FailureAction'] = failureAction;
    if (monitor != null)
      json['Monitor'] = monitor;
    if (maxFailureRatio != null)
      json['MaxFailureRatio'] = maxFailureRatio;
    if (order != null)
      json['Order'] = order;
    return json;
  }

  static List<ServiceSpecUpdateConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceSpecUpdateConfig>() : json.map((value) => ServiceSpecUpdateConfig.fromJson(value)).toList();
  }

  static Map<String, ServiceSpecUpdateConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceSpecUpdateConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceSpecUpdateConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecUpdateConfig-objects as value to a dart map
  static Map<String, List<ServiceSpecUpdateConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceSpecUpdateConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceSpecUpdateConfig.listFromJson(value);
       });
     }
     return map;
  }
}

