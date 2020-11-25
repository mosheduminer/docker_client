part of docker_client.api;

class UnlockKeyResponse {
  /* The swarm's unlock key. */
  String unlockKey = null;
  UnlockKeyResponse();

  @override
  String toString() {
    return 'UnlockKeyResponse[unlockKey=$unlockKey, ]';
  }

  UnlockKeyResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    unlockKey = json['UnlockKey'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (unlockKey != null)
      json['UnlockKey'] = unlockKey;
    return json;
  }

  static List<UnlockKeyResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UnlockKeyResponse>() : json.map((value) => UnlockKeyResponse.fromJson(value)).toList();
  }

  static Map<String, UnlockKeyResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UnlockKeyResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UnlockKeyResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UnlockKeyResponse-objects as value to a dart map
  static Map<String, List<UnlockKeyResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UnlockKeyResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UnlockKeyResponse.listFromJson(value);
       });
     }
     return map;
  }
}

