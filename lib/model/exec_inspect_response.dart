part of docker_client.api;

class ExecInspectResponse {
  
  bool canRemove = null;
  
  String detachKeys = null;
  
  String ID = null;
  
  bool running = null;
  
  int exitCode = null;
  
  ProcessConfig processConfig = null;
  
  bool openStdin = null;
  
  bool openStderr = null;
  
  bool openStdout = null;
  
  String containerID = null;
  /* The system process ID for the exec process. */
  int pid = null;
  ExecInspectResponse();

  @override
  String toString() {
    return 'ExecInspectResponse[canRemove=$canRemove, detachKeys=$detachKeys, ID=$ID, running=$running, exitCode=$exitCode, processConfig=$processConfig, openStdin=$openStdin, openStderr=$openStderr, openStdout=$openStdout, containerID=$containerID, pid=$pid, ]';
  }

  ExecInspectResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canRemove = json['CanRemove'];
    detachKeys = json['DetachKeys'];
    ID = json['ID'];
    running = json['Running'];
    exitCode = json['ExitCode'];
    processConfig = (json['ProcessConfig'] == null) ?
      null :
      ProcessConfig.fromJson(json['ProcessConfig']);
    openStdin = json['OpenStdin'];
    openStderr = json['OpenStderr'];
    openStdout = json['OpenStdout'];
    containerID = json['ContainerID'];
    pid = json['Pid'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (canRemove != null)
      json['CanRemove'] = canRemove;
    if (detachKeys != null)
      json['DetachKeys'] = detachKeys;
    if (ID != null)
      json['ID'] = ID;
    if (running != null)
      json['Running'] = running;
    if (exitCode != null)
      json['ExitCode'] = exitCode;
    if (processConfig != null)
      json['ProcessConfig'] = processConfig;
    if (openStdin != null)
      json['OpenStdin'] = openStdin;
    if (openStderr != null)
      json['OpenStderr'] = openStderr;
    if (openStdout != null)
      json['OpenStdout'] = openStdout;
    if (containerID != null)
      json['ContainerID'] = containerID;
    if (pid != null)
      json['Pid'] = pid;
    return json;
  }

  static List<ExecInspectResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ExecInspectResponse>() : json.map((value) => ExecInspectResponse.fromJson(value)).toList();
  }

  static Map<String, ExecInspectResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExecInspectResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExecInspectResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExecInspectResponse-objects as value to a dart map
  static Map<String, List<ExecInspectResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExecInspectResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExecInspectResponse.listFromJson(value);
       });
     }
     return map;
  }
}

