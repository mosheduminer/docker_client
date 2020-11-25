part of docker_client.api;

class ContainerTopResponse {
  /* The ps column titles */
  List<String> titles = [];
  /* Each process running in the container, where each is process is an array of values corresponding to the titles.  */
  List<List<String>> processes = [];
  ContainerTopResponse();

  @override
  String toString() {
    return 'ContainerTopResponse[titles=$titles, processes=$processes, ]';
  }

  ContainerTopResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    titles = (json['Titles'] == null) ?
      null :
      (json['Titles'] as List).cast<String>();
    processes = (json['Processes'] == null) ?
      null :
      (json['Processes'] as List).map((e) => (e as List).map((e) => e as String).toList()).toList();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (titles != null)
      json['Titles'] = titles;
    if (processes != null)
      json['Processes'] = processes;
    return json;
  }

  static List<ContainerTopResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerTopResponse>() : json.map((value) => ContainerTopResponse.fromJson(value)).toList();
  }

  static Map<String, ContainerTopResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerTopResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerTopResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerTopResponse-objects as value to a dart map
  static Map<String, List<ContainerTopResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerTopResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerTopResponse.listFromJson(value);
       });
     }
     return map;
  }
}

