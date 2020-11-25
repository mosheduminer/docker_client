part of docker_client.api;

class PluginsInfo {
  /* Names of available volume-drivers, and network-driver plugins. */
  List<String> volume = [];
  /* Names of available network-drivers, and network-driver plugins. */
  List<String> network = [];
  /* Names of available authorization plugins. */
  List<String> authorization = [];
  /* Names of available logging-drivers, and logging-driver plugins. */
  List<String> log = [];
  PluginsInfo();

  @override
  String toString() {
    return 'PluginsInfo[volume=$volume, network=$network, authorization=$authorization, log=$log, ]';
  }

  PluginsInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    volume = (json['Volume'] == null) ?
      null :
      (json['Volume'] as List).cast<String>();
    network = (json['Network'] == null) ?
      null :
      (json['Network'] as List).cast<String>();
    authorization = (json['Authorization'] == null) ?
      null :
      (json['Authorization'] as List).cast<String>();
    log = (json['Log'] == null) ?
      null :
      (json['Log'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (volume != null)
      json['Volume'] = volume;
    if (network != null)
      json['Network'] = network;
    if (authorization != null)
      json['Authorization'] = authorization;
    if (log != null)
      json['Log'] = log;
    return json;
  }

  static List<PluginsInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginsInfo>() : json.map((value) => PluginsInfo.fromJson(value)).toList();
  }

  static Map<String, PluginsInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginsInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginsInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PluginsInfo-objects as value to a dart map
  static Map<String, List<PluginsInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PluginsInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PluginsInfo.listFromJson(value);
       });
     }
     return map;
  }
}

