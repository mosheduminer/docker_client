part of docker_client.api;

class MountTmpfsOptions {
  /* The size for the tmpfs mount in bytes. */
  int sizeBytes = null;
  /* The permission mode for the tmpfs mount in an integer. */
  int mode = null;
  MountTmpfsOptions();

  @override
  String toString() {
    return 'MountTmpfsOptions[sizeBytes=$sizeBytes, mode=$mode, ]';
  }

  MountTmpfsOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sizeBytes = json['SizeBytes'];
    mode = json['Mode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sizeBytes != null)
      json['SizeBytes'] = sizeBytes;
    if (mode != null)
      json['Mode'] = mode;
    return json;
  }

  static List<MountTmpfsOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<MountTmpfsOptions>() : json.map((value) => MountTmpfsOptions.fromJson(value)).toList();
  }

  static Map<String, MountTmpfsOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MountTmpfsOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MountTmpfsOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MountTmpfsOptions-objects as value to a dart map
  static Map<String, List<MountTmpfsOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MountTmpfsOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MountTmpfsOptions.listFromJson(value);
       });
     }
     return map;
  }
}

