part of docker_client.api;

class MountBindOptions {
  /* A propagation mode with the value `[r]private`, `[r]shared`, or `[r]slave`. */
  String propagation = null;
  //enum propagationEnum {  private,  rprivate,  shared,  rshared,  slave,  rslave,  };{
  /* Disable recursive bind mount. */
  bool nonRecursive = false;
  MountBindOptions();

  @override
  String toString() {
    return 'MountBindOptions[propagation=$propagation, nonRecursive=$nonRecursive, ]';
  }

  MountBindOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    propagation = json['Propagation'];
    nonRecursive = json['NonRecursive'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (propagation != null)
      json['Propagation'] = propagation;
    if (nonRecursive != null)
      json['NonRecursive'] = nonRecursive;
    return json;
  }

  static List<MountBindOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<MountBindOptions>() : json.map((value) => MountBindOptions.fromJson(value)).toList();
  }

  static Map<String, MountBindOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MountBindOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MountBindOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MountBindOptions-objects as value to a dart map
  static Map<String, List<MountBindOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MountBindOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MountBindOptions.listFromJson(value);
       });
     }
     return map;
  }
}

