part of docker_client.api;

class MountVolumeOptionsDriverConfig {
  /* Name of the driver to use to create the volume. */
  String name = null;
  /* key/value map of driver specific options. */
  Map<String, String> options = {};
  MountVolumeOptionsDriverConfig();

  @override
  String toString() {
    return 'MountVolumeOptionsDriverConfig[name=$name, options=$options, ]';
  }

  MountVolumeOptionsDriverConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    options = (json['Options'] == null) ?
      null :
      (json['Options'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (options != null)
      json['Options'] = options;
    return json;
  }

  static List<MountVolumeOptionsDriverConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<MountVolumeOptionsDriverConfig>() : json.map((value) => MountVolumeOptionsDriverConfig.fromJson(value)).toList();
  }

  static Map<String, MountVolumeOptionsDriverConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MountVolumeOptionsDriverConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MountVolumeOptionsDriverConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MountVolumeOptionsDriverConfig-objects as value to a dart map
  static Map<String, List<MountVolumeOptionsDriverConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MountVolumeOptionsDriverConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MountVolumeOptionsDriverConfig.listFromJson(value);
       });
     }
     return map;
  }
}

