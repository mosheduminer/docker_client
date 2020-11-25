part of docker_client.api;

class Health {
  /* Status is one of `none`, `starting`, `healthy` or `unhealthy`  - \"none\"      Indicates there is no healthcheck - \"starting\"  Starting indicates that the container is not yet ready - \"healthy\"   Healthy indicates that the container is running correctly - \"unhealthy\" Unhealthy indicates that the container has a problem  */
  String status = null;
  //enum statusEnum {  none,  starting,  healthy,  unhealthy,  };{
  /* FailingStreak is the number of consecutive failures */
  int failingStreak = null;
  /* Log contains the last few results (oldest first)  */
  List<HealthcheckResult> log = [];
  Health();

  @override
  String toString() {
    return 'Health[status=$status, failingStreak=$failingStreak, log=$log, ]';
  }

  Health.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['Status'];
    failingStreak = json['FailingStreak'];
    log = (json['Log'] == null) ?
      null :
      HealthcheckResult.listFromJson(json['Log']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (status != null)
      json['Status'] = status;
    if (failingStreak != null)
      json['FailingStreak'] = failingStreak;
    if (log != null)
      json['Log'] = log;
    return json;
  }

  static List<Health> listFromJson(List<dynamic> json) {
    return json == null ? List<Health>() : json.map((value) => Health.fromJson(value)).toList();
  }

  static Map<String, Health> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Health>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Health.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Health-objects as value to a dart map
  static Map<String, List<Health>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Health>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Health.listFromJson(value);
       });
     }
     return map;
  }
}

