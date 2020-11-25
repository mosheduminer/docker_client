part of docker_client.api;

class SecretSpec {
  /* User-defined name of the secret. */
  String name = null;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  /* Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) data to store as secret.  This field is only used to _create_ a secret, and is not returned by other endpoints.  */
  String data = null;

  Driver driver = null;

  Driver templating = null;
  SecretSpec({this.name, this.labels, this.data, this.driver});

  @override
  String toString() {
    return 'SecretSpec[name=$name, labels=$labels, data=$data, driver=$driver, templating=$templating, ]';
  }

  SecretSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    labels = (json['Labels'] == null)
        ? null
        : (json['Labels'] as Map).cast<String, String>();
    data = json['Data'];
    driver = (json['Driver'] == null) ? null : Driver.fromJson(json['Driver']);
    templating = (json['Templating'] == null)
        ? null
        : Driver.fromJson(json['Templating']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null) json['Name'] = name;
    if (labels != null) json['Labels'] = labels;
    if (data != null) json['Data'] = data;
    if (driver != null) json['Driver'] = driver;
    if (templating != null) json['Templating'] = templating;
    return json;
  }

  static List<SecretSpec> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SecretSpec>()
        : json.map((value) => SecretSpec.fromJson(value)).toList();
  }

  static Map<String, SecretSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SecretSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = SecretSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretSpec-objects as value to a dart map
  static Map<String, List<SecretSpec>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<SecretSpec>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = SecretSpec.listFromJson(value);
      });
    }
    return map;
  }
}
