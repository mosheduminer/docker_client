part of docker_client.api;

class VolumeConfig {
  /* The new volume's name. If not specified, Docker generates a name.  */
  String name = null;
  /* Name of the volume driver to use. */
  String driver = "local";
  /* A mapping of driver options and values. These options are passed directly to the driver and are driver specific.  */
  Map<String, String> driverOpts = {};
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  VolumeConfig({this.name, this.driver, this.driverOpts, this.labels});

  @override
  String toString() {
    return 'VolumeConfig[name=$name, driver=$driver, driverOpts=$driverOpts, labels=$labels, ]';
  }

  VolumeConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    driver = json['Driver'];
    driverOpts = (json['DriverOpts'] == null)
        ? null
        : (json['DriverOpts'] as Map).cast<String, String>();
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null) json['Name'] = name;
    if (driver != null) json['Driver'] = driver;
    if (driverOpts != null) json['DriverOpts'] = driverOpts;
    if (labels != null) json['Labels'] = labels;
    return json;
  }

  static List<VolumeConfig> listFromJson(List<dynamic> json) {
    return json == null
        ? List<VolumeConfig>()
        : json.map((value) => VolumeConfig.fromJson(value)).toList();
  }

  static Map<String, VolumeConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VolumeConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = VolumeConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VolumeConfig-objects as value to a dart map
  static Map<String, List<VolumeConfig>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<VolumeConfig>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = VolumeConfig.listFromJson(value);
      });
    }
    return map;
  }
}
