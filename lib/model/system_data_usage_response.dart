part of docker_client.api;

class SystemDataUsageResponse {
  
  int layersSize = null;
  
  List<ImageSummary> images = [];
  
  List<ContainerSummary> containers = [];
  
  List<Volume> volumes = [];
  
  List<BuildCache> buildCache = [];
  SystemDataUsageResponse();

  @override
  String toString() {
    return 'SystemDataUsageResponse[layersSize=$layersSize, images=$images, containers=$containers, volumes=$volumes, buildCache=$buildCache, ]';
  }

  SystemDataUsageResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    layersSize = json['LayersSize'];
    images = (json['Images'] == null) ?
      null :
      ImageSummary.listFromJson(json['Images']);
    containers = (json['Containers'] == null) ?
      null :
      ContainerSummary.listFromJson(json['Containers']);
    volumes = (json['Volumes'] == null) ?
      null :
      Volume.listFromJson(json['Volumes']);
    buildCache = (json['BuildCache'] == null) ?
      null :
      BuildCache.listFromJson(json['BuildCache']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (layersSize != null)
      json['LayersSize'] = layersSize;
    if (images != null)
      json['Images'] = images;
    if (containers != null)
      json['Containers'] = containers;
    if (volumes != null)
      json['Volumes'] = volumes;
    if (buildCache != null)
      json['BuildCache'] = buildCache;
    return json;
  }

  static List<SystemDataUsageResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemDataUsageResponse>() : json.map((value) => SystemDataUsageResponse.fromJson(value)).toList();
  }

  static Map<String, SystemDataUsageResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemDataUsageResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemDataUsageResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemDataUsageResponse-objects as value to a dart map
  static Map<String, List<SystemDataUsageResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemDataUsageResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemDataUsageResponse.listFromJson(value);
       });
     }
     return map;
  }
}

