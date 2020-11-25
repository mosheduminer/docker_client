part of docker_client.api;

class ImageSummary {
  
  String id = null;
  
  String parentId = null;
  
  List<String> repoTags = [];
  
  List<String> repoDigests = [];
  
  int created = null;
  
  int size = null;
  
  int sharedSize = null;
  
  int virtualSize = null;
  
  Map<String, String> labels = {};
  
  int containers = null;
  ImageSummary();

  @override
  String toString() {
    return 'ImageSummary[id=$id, parentId=$parentId, repoTags=$repoTags, repoDigests=$repoDigests, created=$created, size=$size, sharedSize=$sharedSize, virtualSize=$virtualSize, labels=$labels, containers=$containers, ]';
  }

  ImageSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    parentId = json['ParentId'];
    repoTags = (json['RepoTags'] == null) ?
      null :
      (json['RepoTags'] as List).cast<String>();
    repoDigests = (json['RepoDigests'] == null) ?
      null :
      (json['RepoDigests'] as List).cast<String>();
    created = json['Created'];
    size = json['Size'];
    sharedSize = json['SharedSize'];
    virtualSize = json['VirtualSize'];
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
    containers = json['Containers'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (parentId != null)
      json['ParentId'] = parentId;
    if (repoTags != null)
      json['RepoTags'] = repoTags;
    if (repoDigests != null)
      json['RepoDigests'] = repoDigests;
    if (created != null)
      json['Created'] = created;
    if (size != null)
      json['Size'] = size;
    if (sharedSize != null)
      json['SharedSize'] = sharedSize;
    if (virtualSize != null)
      json['VirtualSize'] = virtualSize;
    if (labels != null)
      json['Labels'] = labels;
    if (containers != null)
      json['Containers'] = containers;
    return json;
  }

  static List<ImageSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageSummary>() : json.map((value) => ImageSummary.fromJson(value)).toList();
  }

  static Map<String, ImageSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageSummary.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageSummary-objects as value to a dart map
  static Map<String, List<ImageSummary>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageSummary>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageSummary.listFromJson(value);
       });
     }
     return map;
  }
}

