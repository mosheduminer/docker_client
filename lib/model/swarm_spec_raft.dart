part of docker_client.api;

class SwarmSpecRaft {
  /* The number of log entries between snapshots. */
  int snapshotInterval = null;
  /* The number of snapshots to keep beyond the current snapshot.  */
  int keepOldSnapshots = null;
  /* The number of log entries to keep around to sync up slow followers after a snapshot is created.  */
  int logEntriesForSlowFollowers = null;
  /* The number of ticks that a follower will wait for a message from the leader before becoming a candidate and starting an election. `ElectionTick` must be greater than `HeartbeatTick`.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed.  */
  int electionTick = null;
  /* The number of ticks between heartbeats. Every HeartbeatTick ticks, the leader will send a heartbeat to the followers.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed.  */
  int heartbeatTick = null;
  SwarmSpecRaft();

  @override
  String toString() {
    return 'SwarmSpecRaft[snapshotInterval=$snapshotInterval, keepOldSnapshots=$keepOldSnapshots, logEntriesForSlowFollowers=$logEntriesForSlowFollowers, electionTick=$electionTick, heartbeatTick=$heartbeatTick, ]';
  }

  SwarmSpecRaft.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    snapshotInterval = json['SnapshotInterval'];
    keepOldSnapshots = json['KeepOldSnapshots'];
    logEntriesForSlowFollowers = json['LogEntriesForSlowFollowers'];
    electionTick = json['ElectionTick'];
    heartbeatTick = json['HeartbeatTick'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (snapshotInterval != null)
      json['SnapshotInterval'] = snapshotInterval;
    if (keepOldSnapshots != null)
      json['KeepOldSnapshots'] = keepOldSnapshots;
    if (logEntriesForSlowFollowers != null)
      json['LogEntriesForSlowFollowers'] = logEntriesForSlowFollowers;
    if (electionTick != null)
      json['ElectionTick'] = electionTick;
    if (heartbeatTick != null)
      json['HeartbeatTick'] = heartbeatTick;
    return json;
  }

  static List<SwarmSpecRaft> listFromJson(List<dynamic> json) {
    return json == null ? List<SwarmSpecRaft>() : json.map((value) => SwarmSpecRaft.fromJson(value)).toList();
  }

  static Map<String, SwarmSpecRaft> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SwarmSpecRaft>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SwarmSpecRaft.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecRaft-objects as value to a dart map
  static Map<String, List<SwarmSpecRaft>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SwarmSpecRaft>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SwarmSpecRaft.listFromJson(value);
       });
     }
     return map;
  }
}

