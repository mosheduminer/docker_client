part of docker_client.api;

class ImagePruneResponse {
  /* Images that were deleted */
  List<ImageDeleteResponseItem> imagesDeleted = [];
  /* Disk space reclaimed in bytes */
  int spaceReclaimed = null;
  ImagePruneResponse();

  @override
  String toString() {
    return 'ImagePruneResponse[imagesDeleted=$imagesDeleted, spaceReclaimed=$spaceReclaimed, ]';
  }

  ImagePruneResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    imagesDeleted = (json['ImagesDeleted'] == null) ?
      null :
      ImageDeleteResponseItem.listFromJson(json['ImagesDeleted']);
    spaceReclaimed = json['SpaceReclaimed'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (imagesDeleted != null)
      json['ImagesDeleted'] = imagesDeleted;
    if (spaceReclaimed != null)
      json['SpaceReclaimed'] = spaceReclaimed;
    return json;
  }

  static List<ImagePruneResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ImagePruneResponse>() : json.map((value) => ImagePruneResponse.fromJson(value)).toList();
  }

  static Map<String, ImagePruneResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImagePruneResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImagePruneResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImagePruneResponse-objects as value to a dart map
  static Map<String, List<ImagePruneResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImagePruneResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImagePruneResponse.listFromJson(value);
       });
     }
     return map;
  }
}

