part of docker_client.api;

class ConfigSpec {
  /* User-defined name of the config. */
  String name = null;
  /* User-defined key/value metadata. */
  Map<String, String> labels = {};
  /* Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) config data.  */
  String data = null;
  
  Driver templating = null;
  ConfigSpec({this.name, this.labels, this.data, this.templating});

  @override
  String toString() {
    return 'ConfigSpec[name=$name, labels=$labels, data=$data, templating=$templating, ]';
  }

  ConfigSpec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['Name'];
    labels = (json['Labels'] == null) ?
      null :
      (json['Labels'] as Map).cast<String, String>();
    data = json['Data'];
    templating = (json['Templating'] == null) ?
      null :
      Driver.fromJson(json['Templating']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['Name'] = name;
    if (labels != null)
      json['Labels'] = labels;
    if (data != null)
      json['Data'] = data;
    if (templating != null)
      json['Templating'] = templating;
    return json;
  }

  static List<ConfigSpec> listFromJson(List<dynamic> json) {
    return json == null ? List<ConfigSpec>() : json.map((value) => ConfigSpec.fromJson(value)).toList();
  }

  static Map<String, ConfigSpec> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ConfigSpec>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ConfigSpec.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ConfigSpec-objects as value to a dart map
  static Map<String, List<ConfigSpec>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ConfigSpec>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ConfigSpec.listFromJson(value);
       });
     }
     return map;
  }
}

