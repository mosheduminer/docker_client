part of docker_client.api;

class SwarmSpecEncryptionConfig {
  /* If set, generate a key and use it to lock data stored on the managers.  */
  bool autoLockManagers = null;
  SwarmSpecEncryptionConfig();

  @override
  String toString() {
    return 'SwarmSpecEncryptionConfig[autoLockManagers=$autoLockManagers, ]';
  }

  SwarmSpecEncryptionConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    autoLockManagers = json['AutoLockManagers'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (autoLockManagers != null)
      json['AutoLockManagers'] = autoLockManagers;
    return json;
  }

  static List<SwarmSpecEncryptionConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecEncryptionConfig>() : json.map((value) => SwarmSpecEncryptionConfig.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecEncryptionConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecEncryptionConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecEncryptionConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecEncryptionConfig-objects as value to a dart map
  static Map<String, List<SwarmSpecEncryptionConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecEncryptionConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecEncryptionConfig.listFromJson(value);
       });
     }
     return map;
  }
}

