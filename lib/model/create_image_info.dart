part of docker_client.api;

class CreateImageInfo {
  
  String id = null;
  
  String error = null;
  
  String status = null;
  
  String progress = null;
  
  ProgressDetail progressDetail = null;
  CreateImageInfo();

  @override
  String toString() {
    return 'CreateImageInfo[id=$id, error=$error, status=$status, progress=$progress, progressDetail=$progressDetail, ]';
  }

  CreateImageInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    error = json['error'];
    status = json['status'];
    progress = json['progress'];
    progressDetail = (json['progressDetail'] == null) ?
      null :
      ProgressDetail.fromJson(json['progressDetail']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
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

  static List<CreateImageInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateImageInfo>() : json.map((value) => CreateImageInfo.fromJson(value)).toList();
  }

  static Map<String, CreateImageInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateImageInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateImageInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateImageInfo-objects as value to a dart map
  static Map<String, List<CreateImageInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateImageInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateImageInfo.listFromJson(value);
       });
     }
     return map;
  }
}

