part of docker_client.api;

class VolumeUsageData {
  /* Amount of disk space used by the volume (in bytes). This information is only available for volumes created with the `\"local\"` volume driver. For volumes created with other volume drivers, this field is set to `-1` (\"not available\")  */
  int size = null;
  /* The number of containers referencing this volume. This field is set to `-1` if the reference-count is not available.  */
  int refCount = null;
  VolumeUsageData();

  @override
  String toString() {
    return 'VolumeUsageData[size=$size, refCount=$refCount, ]';
  }

  VolumeUsageData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    size = json['Size'];
    refCount = json['RefCount'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (size != null)
      json['Size'] = size;
    if (refCount != null)
      json['RefCount'] = refCount;
    return json;
  }

  static List<VolumeUsageData> listFromJson(List<dynamic> json) {
    return json == null ? List<VolumeUsageData>() : json.map((value) => VolumeUsageData.fromJson(value)).toList();
  }

  static Map<String, VolumeUsageData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VolumeUsageData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VolumeUsageData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VolumeUsageData-objects as value to a dart map
  static Map<String, List<VolumeUsageData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<VolumeUsageData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = VolumeUsageData.listFromJson(value);
       });
     }
     return map;
  }
}

