import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SwarmSpecRaft
void main() {
    var instance = new SwarmSpecRaft();

  group('test SwarmSpecRaft', () {
    // The number of log entries between snapshots.
    // int snapshotInterval (default value: null)
    test('to test the property `snapshotInterval`', () async {
      // TODO
    });

    // The number of snapshots to keep beyond the current snapshot. 
    // int keepOldSnapshots (default value: null)
    test('to test the property `keepOldSnapshots`', () async {
      // TODO
    });

    // The number of log entries to keep around to sync up slow followers after a snapshot is created. 
    // int logEntriesForSlowFollowers (default value: null)
    test('to test the property `logEntriesForSlowFollowers`', () async {
      // TODO
    });

    // The number of ticks that a follower will wait for a message from the leader before becoming a candidate and starting an election. `ElectionTick` must be greater than `HeartbeatTick`.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed. 
    // int electionTick (default value: null)
    test('to test the property `electionTick`', () async {
      // TODO
    });

    // The number of ticks between heartbeats. Every HeartbeatTick ticks, the leader will send a heartbeat to the followers.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed. 
    // int heartbeatTick (default value: null)
    test('to test the property `heartbeatTick`', () async {
      // TODO
    });


  });

}
