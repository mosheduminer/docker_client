part of docker_client.api;

class ContainerState {
  /* String representation of the container state. Can be one of \"created\", \"running\", \"paused\", \"restarting\", \"removing\", \"exited\", or \"dead\".  */
  String status = null;
  //enum statusEnum {  created,  running,  paused,  restarting,  removing,  exited,  dead,  };{
  /* Whether this container is running.  Note that a running container can be _paused_. The `Running` and `Paused` booleans are not mutually exclusive:  When pausing a container (on Linux), the freezer cgroup is used to suspend all processes in the container. Freezing the process requires the process to be running. As a result, paused containers are both `Running` _and_ `Paused`.  Use the `Status` field instead to determine if a container's state is \"running\".  */
  bool running = null;
  /* Whether this container is paused. */
  bool paused = null;
  /* Whether this container is restarting. */
  bool restarting = null;
  /* Whether this container has been killed because it ran out of memory.  */
  bool oOMKilled = null;
  
  bool dead = null;
  /* The process ID of this container */
  int pid = null;
  /* The last exit code of this container */
  int exitCode = null;
  
  String error = null;
  /* The time when this container was last started. */
  String startedAt = null;
  /* The time when this container last exited. */
  String finishedAt = null;
  
  Health health = null;
  ContainerState();

  @override
  String toString() {
    return 'ContainerState[status=$status, running=$running, paused=$paused, restarting=$restarting, oOMKilled=$oOMKilled, dead=$dead, pid=$pid, exitCode=$exitCode, error=$error, startedAt=$startedAt, finishedAt=$finishedAt, health=$health, ]';
  }

  ContainerState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['Status'];
    running = json['Running'];
    paused = json['Paused'];
    restarting = json['Restarting'];
    oOMKilled = json['OOMKilled'];
    dead = json['Dead'];
    pid = json['Pid'];
    exitCode = json['ExitCode'];
    error = json['Error'];
    startedAt = json['StartedAt'];
    finishedAt = json['FinishedAt'];
    health = (json['Health'] == null) ?
      null :
      Health.fromJson(json['Health']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (status != null)
      json['Status'] = status;
    if (running != null)
      json['Running'] = running;
    if (paused != null)
      json['Paused'] = paused;
    if (restarting != null)
      json['Restarting'] = restarting;
    if (oOMKilled != null)
      json['OOMKilled'] = oOMKilled;
    if (dead != null)
      json['Dead'] = dead;
    if (pid != null)
      json['Pid'] = pid;
    if (exitCode != null)
      json['ExitCode'] = exitCode;
    if (error != null)
      json['Error'] = error;
    if (startedAt != null)
      json['StartedAt'] = startedAt;
    if (finishedAt != null)
      json['FinishedAt'] = finishedAt;
    if (health != null)
      json['Health'] = health;
    return json;
  }

  static List<ContainerState> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerState>() : json.map((value) => ContainerState.fromJson(value)).toList();
  }

  static Map<String, ContainerState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerState.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContainerState-objects as value to a dart map
  static Map<String, List<ContainerState>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContainerState>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContainerState.listFromJson(value);
       });
     }
     return map;
  }
}

