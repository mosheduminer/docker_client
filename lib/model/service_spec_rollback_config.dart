part of docker_client.api;

class ServiceSpecRollbackConfig {
  /* Maximum number of tasks to be rolled back in one iteration (0 means unlimited parallelism).  */
  int parallelism = null;
  /* Amount of time between rollback iterations, in nanoseconds.  */
  int delay = null;
  /* Action to take if an rolled back task fails to run, or stops running during the rollback.  */
  String failureAction = null;
  //enum failureActionEnum {  continue,  pause,  };{
  /* Amount of time to monitor each rolled back task for failures, in nanoseconds.  */
  int monitor = null;
  /* The fraction of tasks that may fail during a rollback before the failure action is invoked, specified as a floating point number between 0 and 1.  */
  num maxFailureRatio = null;
  /* The order of operations when rolling back a task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.  */
  String order = null;
  //enum orderEnum {  stop-first,  start-first,  };{
  ServiceSpecRollbackConfig();

  @override
  String toString() {
    return 'ServiceSpecRollbackConfig[parallelism=$parallelism, delay=$delay, failureAction=$failureAction, monitor=$monitor, maxFailureRatio=$maxFailureRatio, order=$order, ]';
  }

  ServiceSpecRollbackConfig.fromJson(Map<String, dynamic> json) {
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

  static List<ServiceSpecRollbackConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceSpecRollbackConfig>() : json.map((value) => ServiceSpecRollbackConfig.fromJson(value)).toList();
  }

  static Map<String, ServiceSpecRollbackConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceSpecRollbackConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceSpecRollbackConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecRollbackConfig-objects as value to a dart map
  static Map<String, List<ServiceSpecRollbackConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceSpecRollbackConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceSpecRollbackConfig.listFromJson(value);
       });
     }
     return map;
  }
}

