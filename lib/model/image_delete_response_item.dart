part of docker_client.api;

class ImageDeleteResponseItem {
  /* The image ID of an image that was untagged */
  String untagged = null;
  /* The image ID of an image that was deleted */
  String deleted = null;
  ImageDeleteResponseItem();

  @override
  String toString() {
    return 'ImageDeleteResponseItem[untagged=$untagged, deleted=$deleted, ]';
  }

  ImageDeleteResponseItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    untagged = json['Untagged'];
    deleted = json['Deleted'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (untagged != null)
      json['Untagged'] = untagged;
    if (deleted != null)
      json['Deleted'] = deleted;
    return json;
  }

  static List<ImageDeleteResponseItem> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageDeleteResponseItem>() : json.map((value) => ImageDeleteResponseItem.fromJson(value)).toList();
  }

  static Map<String, ImageDeleteResponseItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageDeleteResponseItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageDeleteResponseItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageDeleteResponseItem-objects as value to a dart map
  static Map<String, List<ImageDeleteResponseItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageDeleteResponseItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageDeleteResponseItem.listFromJson(value);
       });
     }
     return map;
  }
}

