part of docker_client.api;

class DistributionInspectResponsePlatforms {
  
  String architecture = null;
  
  String OS = null;
  
  String oSVersion = null;
  
  List<String> oSFeatures = [];
  
  String variant = null;
  
  List<String> features = [];
  DistributionInspectResponsePlatforms();

  @override
  String toString() {
    return 'DistributionInspectResponsePlatforms[architecture=$architecture, OS=$OS, oSVersion=$oSVersion, oSFeatures=$oSFeatures, variant=$variant, features=$features, ]';
  }

  DistributionInspectResponsePlatforms.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    architecture = json['Architecture'];
    OS = json['OS'];
    oSVersion = json['OSVersion'];
    oSFeatures = (json['OSFeatures'] == null) ?
      null :
      (json['OSFeatures'] as List).cast<String>();
    variant = json['Variant'];
    features = (json['Features'] == null) ?
      null :
      (json['Features'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (architecture != null)
      json['Architecture'] = architecture;
    if (OS != null)
      json['OS'] = OS;
    if (oSVersion != null)
      json['OSVersion'] = oSVersion;
    if (oSFeatures != null)
      json['OSFeatures'] = oSFeatures;
    if (variant != null)
      json['Variant'] = variant;
    if (features != null)
      json['Features'] = features;
    return json;
  }

  static List<DistributionInspectResponsePlatforms> listFromJson(List<dynamic> json) {
    return json == null ? List<DistributionInspectResponsePlatforms>() : json.map((value) => DistributionInspectResponsePlatforms.fromJson(value)).toList();
  }

  static Map<String, DistributionInspectResponsePlatforms> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DistributionInspectResponsePlatforms>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DistributionInspectResponsePlatforms.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DistributionInspectResponsePlatforms-objects as value to a dart map
  static Map<String, List<DistributionInspectResponsePlatforms>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DistributionInspectResponsePlatforms>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DistributionInspectResponsePlatforms.listFromJson(value);
       });
     }
     return map;
  }
}

