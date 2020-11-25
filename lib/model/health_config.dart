part of docker_client.api;

class HealthConfig {
  /* The test to perform. Possible values are:  - `[]` inherit healthcheck from image or parent image - `[\"NONE\"]` disable healthcheck - `[\"CMD\", args...]` exec arguments directly - `[\"CMD-SHELL\", command]` run command with system's default shell  */
  List<String> test = [];
  /* The time to wait between checks in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit.  */
  int interval = null;
  /* The time to wait before considering the check to have hung. It should be 0 or at least 1000000 (1 ms). 0 means inherit.  */
  int timeout = null;
  /* The number of consecutive failures needed to consider a container as unhealthy. 0 means inherit.  */
  int retries = null;
  /* Start period for the container to initialize before starting health-retries countdown in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit.  */
  int startPeriod = null;
  HealthConfig();

  @override
  String toString() {
    return 'HealthConfig[test=$test, interval=$interval, timeout=$timeout, retries=$retries, startPeriod=$startPeriod, ]';
  }

  HealthConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    test = (json['Test'] == null) ?
      null :
      (json['Test'] as List).cast<String>();
    interval = json['Interval'];
    timeout = json['Timeout'];
    retries = json['Retries'];
    startPeriod = json['StartPeriod'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (test != null)
      json['Test'] = test;
    if (interval != null)
      json['Interval'] = interval;
    if (timeout != null)
      json['Timeout'] = timeout;
    if (retries != null)
      json['Retries'] = retries;
    if (startPeriod != null)
      json['StartPeriod'] = startPeriod;
    return json;
  }

  static List<HealthConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<HealthConfig>() : json.map((value) => HealthConfig.fromJson(value)).toList();
  }

  static Map<String, HealthConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HealthConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HealthConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HealthConfig-objects as value to a dart map
  static Map<String, List<HealthConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HealthConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HealthConfig.listFromJson(value);
       });
     }
     return map;
  }
}

