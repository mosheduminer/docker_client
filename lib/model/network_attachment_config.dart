part of docker_client.api;

class NetworkAttachmentConfig {
  /* The target network for attachment. Must be a network name or ID.  */
  String target = null;
  /* Discoverable alternate names for the service on this network.  */
  List<String> aliases = [];
  /* Driver attachment options for the network target.  */
  Map<String, String> driverOpts = {};
  NetworkAttachmentConfig();

  @override
  String toString() {
    return 'NetworkAttachmentConfig[target=$target, aliases=$aliases, driverOpts=$driverOpts, ]';
  }

  NetworkAttachmentConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    target = json['Target'];
    aliases = (json['Aliases'] == null) ?
      null :
      (json['Aliases'] as List).cast<String>();
    driverOpts = (json['DriverOpts'] == null) ?
      null :
      (json['DriverOpts'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (target != null)
      json['Target'] = target;
    if (aliases != null)
      json['Aliases'] = aliases;
    if (driverOpts != null)
      json['DriverOpts'] = driverOpts;
    return json;
  }

  static List<NetworkAttachmentConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<NetworkAttachmentConfig>() : json.map((value) => NetworkAttachmentConfig.fromJson(value)).toList();
  }

  static Map<String, NetworkAttachmentConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NetworkAttachmentConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NetworkAttachmentConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkAttachmentConfig-objects as value to a dart map
  static Map<String, List<NetworkAttachmentConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NetworkAttachmentConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NetworkAttachmentConfig.listFromJson(value);
       });
     }
     return map;
  }
}

