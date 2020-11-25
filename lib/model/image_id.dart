part of docker_client.api;

class ImageID {
  
  String ID = null;
  ImageID();

  @override
  String toString() {
    return 'ImageID[ID=$ID, ]';
  }

  ImageID.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    return json;
  }

  static List<ImageID> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageID>() : json.map((value) => ImageID.fromJson(value)).toList();
  }

  static Map<String, ImageID> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageID>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageID.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageID-objects as value to a dart map
  static Map<String, List<ImageID>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageID>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageID.listFromJson(value);
       });
     }
     return map;
  }
}

