part of docker_client.api;

class ProcessConfig {
  
  bool privileged = null;
  
  String user = null;
  
  bool tty = null;
  
  String entrypoint = null;
  
  List<String> arguments = [];
  ProcessConfig();

  @override
  String toString() {
    return 'ProcessConfig[privileged=$privileged, user=$user, tty=$tty, entrypoint=$entrypoint, arguments=$arguments, ]';
  }

  ProcessConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    privileged = json['privileged'];
    user = json['user'];
    tty = json['tty'];
    entrypoint = json['entrypoint'];
    arguments = (json['arguments'] == null) ?
      null :
      (json['arguments'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (privileged != null)
      json['privileged'] = privileged;
    if (user != null)
      json['user'] = user;
    if (tty != null)
      json['tty'] = tty;
    if (entrypoint != null)
      json['entrypoint'] = entrypoint;
    if (arguments != null)
      json['arguments'] = arguments;
    return json;
  }

  static List<ProcessConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessConfig>() : json.map((value) => ProcessConfig.fromJson(value)).toList();
  }

  static Map<String, ProcessConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProcessConfig-objects as value to a dart map
  static Map<String, List<ProcessConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProcessConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProcessConfig.listFromJson(value);
       });
     }
     return map;
  }
}

