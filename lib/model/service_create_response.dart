part of docker_client.api;

class ServiceCreateResponse {
  /* The ID of the created service. */
  String ID = null;
  /* Optional warning message */
  String warning = null;
  ServiceCreateResponse();

  @override
  String toString() {
    return 'ServiceCreateResponse[ID=$ID, warning=$warning, ]';
  }

  ServiceCreateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    warning = json['Warning'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    if (warning != null)
      json['Warning'] = warning;
    return json;
  }

  static List<ServiceCreateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceCreateResponse>() : json.map((value) => ServiceCreateResponse.fromJson(value)).toList();
  }

  static Map<String, ServiceCreateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceCreateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceCreateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceCreateResponse-objects as value to a dart map
  static Map<String, List<ServiceCreateResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServiceCreateResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServiceCreateResponse.listFromJson(value);
       });
     }
     return map;
  }
}

