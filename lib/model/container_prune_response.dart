part of docker_client.api;

class ContainerPruneResponse {
  /* Container IDs that were deleted */
  List<String> containersDeleted = [];
  /* Disk space reclaimed in bytes */
  int spaceReclaimed = null;
  ContainerPruneResponse();

  @override
  String toString() {
    return 'ContainerPruneResponse[containersDeleted=$containersDeleted, spaceReclaimed=$spaceReclaimed, ]';
  }

  ContainerPruneResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    containersDeleted = (json['ContainersDeleted'] == null) ?
      null :
      (json['ContainersDeleted'] as List).cast<String>();
    spaceReclaimed = json['SpaceReclaimed'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (containersDeleted != null)
      json['ContainersDeleted'] = containersDeleted;
    if (spaceReclaimed != null)
      json['SpaceReclaimed'] = spaceReclaimed;
    return json;
  }

  static List<ContainerPruneResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerPruneResponse>() : json.map((value) => ContainerPruneResponse.fromJson(value)).toList();
  }

  static Map<String, ContainerPruneResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerPruneResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerPruneResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerPruneResponse-objects as value to a dart map
  static Map<String, List<ContainerPruneResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerPruneResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerPruneResponse.listFromJson(value);
       });
     }
     return map;
  }
}

