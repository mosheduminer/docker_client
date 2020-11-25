part of docker_client.api;

class ImageMetadata {
  
  String lastTagTime = null;
  ImageMetadata();

  @override
  String toString() {
    return 'ImageMetadata[lastTagTime=$lastTagTime, ]';
  }

  ImageMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lastTagTime = json['LastTagTime'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastTagTime != null)
      json['LastTagTime'] = lastTagTime;
    return json;
  }

  static List<ImageMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageMetadata>() : json.map((value) => ImageMetadata.fromJson(value)).toList();
  }

  static Map<String, ImageMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageMetadata-objects as value to a dart map
  static Map<String, List<ImageMetadata>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageMetadata>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageMetadata.listFromJson(value);
       });
     }
     return map;
  }
}

