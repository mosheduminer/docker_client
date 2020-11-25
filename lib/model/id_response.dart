part of docker_client.api;

class IdResponse {
  /* The id of the newly created object. */
  String id = null;
  IdResponse();

  @override
  String toString() {
    return 'IdResponse[id=$id, ]';
  }

  IdResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    return json;
  }

  static List<IdResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<IdResponse>() : json.map((value) => IdResponse.fromJson(value)).toList();
  }

  static Map<String, IdResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IdResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IdResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IdResponse-objects as value to a dart map
  static Map<String, List<IdResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<IdResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = IdResponse.listFromJson(value);
       });
     }
     return map;
  }
}

