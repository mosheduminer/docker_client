part of docker_client.api;

class VolumeListResponse {
  /* List of volumes */
  List<Volume> volumes = [];
  /* Warnings that occurred when fetching the list of volumes.  */
  List<String> warnings = [];
  VolumeListResponse();

  @override
  String toString() {
    return 'VolumeListResponse[volumes=$volumes, warnings=$warnings, ]';
  }

  VolumeListResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    volumes = (json['Volumes'] == null) ?
      null :
      Volume.listFromJson(json['Volumes']);
    warnings = (json['Warnings'] == null) ?
      null :
      (json['Warnings'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (volumes != null)
      json['Volumes'] = volumes;
    if (warnings != null)
      json['Warnings'] = warnings;
    return json;
  }

  static List<VolumeListResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<VolumeListResponse>() : json.map((value) => VolumeListResponse.fromJson(value)).toList();
  }

  static Map<String, VolumeListResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VolumeListResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VolumeListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VolumeListResponse-objects as value to a dart map
  static Map<String, List<VolumeListResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<VolumeListResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = VolumeListResponse.listFromJson(value);
       });
     }
     return map;
  }
}

