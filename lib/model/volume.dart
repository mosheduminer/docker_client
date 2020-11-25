part of docker_client.api;

class Volume {
  /* Name of the volume. */
  String name = null;
  /* Name of the volume driver used by the volume. */
  String driver = null;
  /* Mount path of the volume on the host. */
  String mountpoint = null;
  /* Date/Time the volume was created. */
  String createdAt = null;
  /* Low-level details about the volume, provided by the volume driver. Details are returned as a map with key/value pairs: `{\"key\":\"value\",\"key2\":\"value2\"}`.  The `Status` field is optional, and is omitted if the volume driver does not support this feature.  */
  Map<String, String> status = {};
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  /* The level at which the volume exists. Either `global` for cluster-wide, or `local` for machine level.  */
  String scope = "local";
  //enum scopeEnum {  local,  global,  };{
  /* The driver specific options used when creating the volume.  */
  Map<String, String> options = {};

  VolumeUsageData usageData = null;
  Volume();

  @override
  String toString() {
    return 'Volume[name=$name, driver=$driver, mountpoint=$mountpoint, createdAt=$createdAt, status=$status, labels=$labels, scope=$scope, options=$options, usageData=$usageData, ]';
  }

  Volume.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    driver = json['Driver'];
    mountpoint = json['Mountpoint'];
    createdAt = json['CreatedAt'];
    status =
        (json['Status'] == null) ? null : json['Status'] as Map<String, String>;
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
    scope = json['Scope'];
    options = (json['Options'] == null)
        ? null
        : (json['Options'] as Map).cast<String, String>();
    usageData = (json['UsageData'] == null)
        ? null
        : VolumeUsageData.fromJson(json['UsageData']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null) json['Name'] = name;
    if (driver != null) json['Driver'] = driver;
    if (mountpoint != null) json['Mountpoint'] = mountpoint;
    if (createdAt != null) json['CreatedAt'] = createdAt;
    if (status != null) json['Status'] = status;
    if (labels != null) json['Labels'] = labels;
    if (scope != null) json['Scope'] = scope;
    if (options != null) json['Options'] = options;
    json['UsageData'] = usageData;
    return json;
  }

  static List<Volume> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Volume>()
        : json.map((value) => Volume.fromJson(value)).toList();
  }

  static Map<String, Volume> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Volume>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Volume.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Volume-objects as value to a dart map
  static Map<String, List<Volume>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Volume>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Volume.listFromJson(value);
      });
    }
    return map;
  }
}
