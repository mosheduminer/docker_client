part of docker_client.api;

class ImageRootFS {
  
  String type = null;
  
  List<String> layers = [];
  
  String baseLayer = null;
  ImageRootFS();

  @override
  String toString() {
    return 'ImageRootFS[type=$type, layers=$layers, baseLayer=$baseLayer, ]';
  }

  ImageRootFS.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['Type'];
    layers = (json['Layers'] == null) ?
      null :
      (json['Layers'] as List).cast<String>();
    baseLayer = json['BaseLayer'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['Type'] = type;
    if (layers != null)
      json['Layers'] = layers;
    if (baseLayer != null)
      json['BaseLayer'] = baseLayer;
    return json;
  }

  static List<ImageRootFS> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageRootFS>() : json.map((value) => ImageRootFS.fromJson(value)).toList();
  }

  static Map<String, ImageRootFS> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageRootFS>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageRootFS.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageRootFS-objects as value to a dart map
  static Map<String, List<ImageRootFS>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageRootFS>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageRootFS.listFromJson(value);
       });
     }
     return map;
  }
}

