part of docker_client.api;

class SystemAuthResponse {
  /* The status of the authentication */
  String status = null;
  /* An opaque token used to authenticate a user after a successful login */
  String identityToken = null;
  SystemAuthResponse();

  @override
  String toString() {
    return 'SystemAuthResponse[status=$status, identityToken=$identityToken, ]';
  }

  SystemAuthResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['Status'];
    identityToken = json['IdentityToken'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (status != null)
      json['Status'] = status;
    if (identityToken != null)
      json['IdentityToken'] = identityToken;
    return json;
  }

  static List<SystemAuthResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SystemAuthResponse>() : json.map((value) => SystemAuthResponse.fromJson(value)).toList();
  }

  static Map<String, SystemAuthResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SystemAuthResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SystemAuthResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SystemAuthResponse-objects as value to a dart map
  static Map<String, List<SystemAuthResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SystemAuthResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SystemAuthResponse.listFromJson(value);
       });
     }
     return map;
  }
}

