part of docker_client.api;

class MountVolumeOptions {
  /* Populate volume with data from the target. */
  bool noCopy = false;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  
  MountVolumeOptionsDriverConfig driverConfig = null;
  MountVolumeOptions();

  @override
  String toString() {
    return 'MountVolumeOptions[noCopy=$noCopy, labels=$labels, driverConfig=$driverConfig, ]';
  }

  MountVolumeOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    noCopy = json['NoCopy'];
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
    driverConfig = (json['DriverConfig'] == null) ?
      null :
      MountVolumeOptionsDriverConfig.fromJson(json['DriverConfig']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (noCopy != null)
      json['NoCopy'] = noCopy;
    if (labels != null)
      json['Labels'] = labels;
    if (driverConfig != null)
      json['DriverConfig'] = driverConfig;
    return json;
  }

  static List<MountVolumeOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<MountVolumeOptions>() : json.map((value) => MountVolumeOptions.fromJson(value)).toList();
  }

  static Map<String, MountVolumeOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MountVolumeOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MountVolumeOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MountVolumeOptions-objects as value to a dart map
  static Map<String, List<MountVolumeOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MountVolumeOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MountVolumeOptions.listFromJson(value);
       });
     }
     return map;
  }
}

