part of docker_client.api;

class ImageSearchResponseItem {
  
  String description = null;
  
  bool isOfficial = null;
  
  bool isAutomated = null;
  
  String name = null;
  
  int starCount = null;
  ImageSearchResponseItem();

  @override
  String toString() {
    return 'ImageSearchResponseItem[description=$description, isOfficial=$isOfficial, isAutomated=$isAutomated, name=$name, starCount=$starCount, ]';
  }

  ImageSearchResponseItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    isOfficial = json['is_official'];
    isAutomated = json['is_automated'];
    name = json['name'];
    starCount = json['star_count'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (isOfficial != null)
      json['is_official'] = isOfficial;
    if (isAutomated != null)
      json['is_automated'] = isAutomated;
    if (name != null)
      json['name'] = name;
    if (starCount != null)
      json['star_count'] = starCount;
    return json;
  }

  static List<ImageSearchResponseItem> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageSearchResponseItem>() : json.map((value) => ImageSearchResponseItem.fromJson(value)).toList();
  }

  static Map<String, ImageSearchResponseItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageSearchResponseItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageSearchResponseItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageSearchResponseItem-objects as value to a dart map
  static Map<String, List<ImageSearchResponseItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageSearchResponseItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageSearchResponseItem.listFromJson(value);
       });
     }
     return map;
  }
}

