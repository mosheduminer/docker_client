part of docker_client.api;

class DistributionInspectResponseDescriptor {
  
  String mediaType = null;
  
  int size = null;
  
  String digest = null;
  
  List<String> uRLs = [];
  DistributionInspectResponseDescriptor();

  @override
  String toString() {
    return 'DistributionInspectResponseDescriptor[mediaType=$mediaType, size=$size, digest=$digest, uRLs=$uRLs, ]';
  }

  DistributionInspectResponseDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mediaType = json['MediaType'];
    size = json['Size'];
    digest = json['Digest'];
    uRLs = (json['URLs'] == null) ?
      null :
      (json['URLs'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mediaType != null)
      json['MediaType'] = mediaType;
    if (size != null)
      json['Size'] = size;
    if (digest != null)
      json['Digest'] = digest;
    if (uRLs != null)
      json['URLs'] = uRLs;
    return json;
  }

  static List<DistributionInspectResponseDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<DistributionInspectResponseDescriptor>() : json.map((value) => DistributionInspectResponseDescriptor.fromJson(value)).toList();
  }

  static Map<String, DistributionInspectResponseDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DistributionInspectResponseDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DistributionInspectResponseDescriptor.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DistributionInspectResponseDescriptor-objects as value to a dart map
  static Map<String, List<DistributionInspectResponseDescriptor>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DistributionInspectResponseDescriptor>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DistributionInspectResponseDescriptor.listFromJson(value);
       });
     }
     return map;
  }
}

