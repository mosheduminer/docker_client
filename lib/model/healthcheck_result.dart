part of docker_client.api;

class HealthcheckResult {
  /* Date and time at which this check started in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  DateTime start = null;
  /* Date and time at which this check ended in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String end = null;
  /* ExitCode meanings:  - `0` healthy - `1` unhealthy - `2` reserved (considered unhealthy) - other values: error running probe  */
  int exitCode = null;
  /* Output from last check */
  String output = null;
  HealthcheckResult();

  @override
  String toString() {
    return 'HealthcheckResult[start=$start, end=$end, exitCode=$exitCode, output=$output, ]';
  }

  HealthcheckResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    start = (json['Start'] == null) ?
      null :
      DateTime.parse(json['Start']);
    end = json['End'];
    exitCode = json['ExitCode'];
    output = json['Output'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (start != null)
      json['Start'] = start == null ? null : start.toUtc().toIso8601String();
    if (end != null)
      json['End'] = end;
    if (exitCode != null)
      json['ExitCode'] = exitCode;
    if (output != null)
      json['Output'] = output;
    return json;
  }

  static List<HealthcheckResult> listFromJson(List<dynamic> json) {
    return json == null ? List<HealthcheckResult>() : json.map((value) => HealthcheckResult.fromJson(value)).toList();
  }

  static Map<String, HealthcheckResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HealthcheckResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HealthcheckResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HealthcheckResult-objects as value to a dart map
  static Map<String, List<HealthcheckResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HealthcheckResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HealthcheckResult.listFromJson(value);
       });
     }
     return map;
  }
}

