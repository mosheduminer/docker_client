part of docker_client.api;

class HostConfigAllOfLogConfig {
  
  String type = null;
  //enum typeEnum {  json-file,  syslog,  journald,  gelf,  fluentd,  awslogs,  splunk,  etwlogs,  none,  };{
  
  Map<String, String> config = {};
  HostConfigAllOfLogConfig();

  @override
  String toString() {
    return 'HostConfigAllOfLogConfig[type=$type, config=$config, ]';
  }

  HostConfigAllOfLogConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['Type'];
    config = (json['Config'] == null) ?
      null :
      (json['Config'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['Type'] = type;
    if (config != null)
      json['Config'] = config;
    return json;
  }

  static List<HostConfigAllOfLogConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<HostConfigAllOfLogConfig>() : json.map((value) => HostConfigAllOfLogConfig.fromJson(value)).toList();
  }

  static Map<String, HostConfigAllOfLogConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HostConfigAllOfLogConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HostConfigAllOfLogConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HostConfigAllOfLogConfig-objects as value to a dart map
  static Map<String, List<HostConfigAllOfLogConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HostConfigAllOfLogConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HostConfigAllOfLogConfig.listFromJson(value);
       });
     }
     return map;
  }
}

