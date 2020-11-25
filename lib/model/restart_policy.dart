part of docker_client.api;

class RestartPolicy {
  /* - Empty string means not to restart - `always` Always restart - `unless-stopped` Restart always except when the user has manually stopped the container - `on-failure` Restart only when the container exit code is non-zero  */
  String name = null;
  //enum nameEnum {  ,  always,  unless-stopped,  on-failure,  };{
  /* If `on-failure` is used, the number of times to retry before giving up.  */
  int maximumRetryCount = null;
  RestartPolicy();

  @override
  String toString() {
    return 'RestartPolicy[name=$name, maximumRetryCount=$maximumRetryCount, ]';
  }

  RestartPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    maximumRetryCount = json['MaximumRetryCount'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (maximumRetryCount != null)
      json['MaximumRetryCount'] = maximumRetryCount;
    return json;
  }

  static List<RestartPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<RestartPolicy>() : json.map((value) => RestartPolicy.fromJson(value)).toList();
  }

  static Map<String, RestartPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RestartPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RestartPolicy.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RestartPolicy-objects as value to a dart map
  static Map<String, List<RestartPolicy>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RestartPolicy>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RestartPolicy.listFromJson(value);
       });
     }
     return map;
  }
}

