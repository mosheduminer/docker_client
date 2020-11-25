part of docker_client.api;

class Commit {
  /* Actual commit ID of external tool. */
  String ID = null;
  /* Commit ID of external tool expected by dockerd as set at build time.  */
  String expected = null;
  Commit();

  @override
  String toString() {
    return 'Commit[ID=$ID, expected=$expected, ]';
  }

  Commit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    expected = json['Expected'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    if (expected != null)
      json['Expected'] = expected;
    return json;
  }

  static List<Commit> listFromJson(List<dynamic> json) {
    return json == null ? List<Commit>() : json.map((value) => Commit.fromJson(value)).toList();
  }

  static Map<String, Commit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Commit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Commit.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Commit-objects as value to a dart map
  static Map<String, List<Commit>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Commit>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Commit.listFromJson(value);
       });
     }
     return map;
  }
}

