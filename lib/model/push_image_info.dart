part of docker_client.api;

class PushImageInfo {
  
  String error = null;
  
  String status = null;
  
  String progress = null;
  
  ProgressDetail progressDetail = null;
  PushImageInfo();

  @override
  String toString() {
    return 'PushImageInfo[error=$error, status=$status, progress=$progress, progressDetail=$progressDetail, ]';
  }

  PushImageInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
    status = json['status'];
    progress = json['progress'];
    progressDetail = (json['progressDetail'] == null) ?
      null :
      ProgressDetail.fromJson(json['progressDetail']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (error != null)
      json['error'] = error;
    if (status != null)
      json['status'] = status;
    if (progress != null)
      json['progress'] = progress;
    if (progressDetail != null)
      json['progressDetail'] = progressDetail;
    return json;
  }

  static List<PushImageInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<PushImageInfo>() : json.map((value) => PushImageInfo.fromJson(value)).toList();
  }

  static Map<String, PushImageInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PushImageInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PushImageInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PushImageInfo-objects as value to a dart map
  static Map<String, List<PushImageInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PushImageInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PushImageInfo.listFromJson(value);
       });
     }
     return map;
  }
}

