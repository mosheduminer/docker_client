part of docker_client.api;

class BuildInfo {
  
  String id = null;
  
  String stream = null;
  
  String error = null;
  
  ErrorDetail errorDetail = null;
  
  String status = null;
  
  String progress = null;
  
  ProgressDetail progressDetail = null;
  
  ImageID aux = null;
  BuildInfo();

  @override
  String toString() {
    return 'BuildInfo[id=$id, stream=$stream, error=$error, errorDetail=$errorDetail, status=$status, progress=$progress, progressDetail=$progressDetail, aux=$aux, ]';
  }

  BuildInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    stream = json['stream'];
    error = json['error'];
    errorDetail = (json['errorDetail'] == null) ?
      null :
      ErrorDetail.fromJson(json['errorDetail']);
    status = json['status'];
    progress = json['progress'];
    progressDetail = (json['progressDetail'] == null) ?
      null :
      ProgressDetail.fromJson(json['progressDetail']);
    aux = (json['aux'] == null) ?
      null :
      ImageID.fromJson(json['aux']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (stream != null)
      json['stream'] = stream;
    if (error != null)
      json['error'] = error;
    if (errorDetail != null)
      json['errorDetail'] = errorDetail;
    if (status != null)
      json['status'] = status;
    if (progress != null)
      json['progress'] = progress;
    if (progressDetail != null)
      json['progressDetail'] = progressDetail;
    if (aux != null)
      json['aux'] = aux;
    return json;
  }

  static List<BuildInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildInfo>() : json.map((value) => BuildInfo.fromJson(value)).toList();
  }

  static Map<String, BuildInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BuildInfo-objects as value to a dart map
  static Map<String, List<BuildInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BuildInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BuildInfo.listFromJson(value);
       });
     }
     return map;
  }
}

