part of docker_client.api;

class BuildPruneResponse {
  
  List<String> cachesDeleted = [];
  /* Disk space reclaimed in bytes */
  int spaceReclaimed = null;
  BuildPruneResponse();

  @override
  String toString() {
    return 'BuildPruneResponse[cachesDeleted=$cachesDeleted, spaceReclaimed=$spaceReclaimed, ]';
  }

  BuildPruneResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cachesDeleted = (json['CachesDeleted'] == null) ?
      null :
      (json['CachesDeleted'] as List).cast<String>();
    spaceReclaimed = json['SpaceReclaimed'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cachesDeleted != null)
      json['CachesDeleted'] = cachesDeleted;
    if (spaceReclaimed != null)
      json['SpaceReclaimed'] = spaceReclaimed;
    return json;
  }

  static List<BuildPruneResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildPruneResponse>() : json.map((value) => BuildPruneResponse.fromJson(value)).toList();
  }

  static Map<String, BuildPruneResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildPruneResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildPruneResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BuildPruneResponse-objects as value to a dart map
  static Map<String, List<BuildPruneResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BuildPruneResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BuildPruneResponse.listFromJson(value);
       });
     }
     return map;
  }
}

