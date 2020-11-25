part of docker_client.api;

class VolumePruneResponse {
  /* Volumes that were deleted */
  List<String> volumesDeleted = [];
  /* Disk space reclaimed in bytes */
  int spaceReclaimed = null;
  VolumePruneResponse();

  @override
  String toString() {
    return 'VolumePruneResponse[volumesDeleted=$volumesDeleted, spaceReclaimed=$spaceReclaimed, ]';
  }

  VolumePruneResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    volumesDeleted = (json['VolumesDeleted'] == null) ?
      null :
      (json['VolumesDeleted'] as List).cast<String>();
    spaceReclaimed = json['SpaceReclaimed'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (volumesDeleted != null)
      json['VolumesDeleted'] = volumesDeleted;
    if (spaceReclaimed != null)
      json['SpaceReclaimed'] = spaceReclaimed;
    return json;
  }

  static List<VolumePruneResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<VolumePruneResponse>() : json.map((value) => VolumePruneResponse.fromJson(value)).toList();
  }

  static Map<String, VolumePruneResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VolumePruneResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VolumePruneResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VolumePruneResponse-objects as value to a dart map
  static Map<String, List<VolumePruneResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<VolumePruneResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = VolumePruneResponse.listFromJson(value);
       });
     }
     return map;
  }
}

