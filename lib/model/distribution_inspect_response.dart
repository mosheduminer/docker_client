part of docker_client.api;

class DistributionInspectResponse {
  
  DistributionInspectResponseDescriptor descriptor = null;
  /* An array containing all platforms supported by the image.  */
  List<DistributionInspectResponsePlatforms> platforms = [];
  DistributionInspectResponse();

  @override
  String toString() {
    return 'DistributionInspectResponse[descriptor=$descriptor, platforms=$platforms, ]';
  }

  DistributionInspectResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    descriptor = (json['Descriptor'] == null) ?
      null :
      DistributionInspectResponseDescriptor.fromJson(json['Descriptor']);
    platforms = (json['Platforms'] == null) ?
      null :
      DistributionInspectResponsePlatforms.listFromJson(json['Platforms']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (descriptor != null)
      json['Descriptor'] = descriptor;
    if (platforms != null)
      json['Platforms'] = platforms;
    return json;
  }

  static List<DistributionInspectResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<DistributionInspectResponse>() : json.map((value) => DistributionInspectResponse.fromJson(value)).toList();
  }

  static Map<String, DistributionInspectResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DistributionInspectResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DistributionInspectResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DistributionInspectResponse-objects as value to a dart map
  static Map<String, List<DistributionInspectResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DistributionInspectResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DistributionInspectResponse.listFromJson(value);
       });
     }
     return map;
  }
}

