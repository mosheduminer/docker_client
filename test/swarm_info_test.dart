import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SwarmInfo
void main() {
    var instance = new SwarmInfo();

  group('test SwarmInfo', () {
    // Unique identifier of for this node in the swarm.
    // String nodeID (default value: "")
    test('to test the property `nodeID`', () async {
      // TODO
    });

    // IP address at which this node can be reached by other nodes in the swarm. 
    // String nodeAddr (default value: "")
    test('to test the property `nodeAddr`', () async {
      // TODO
    });

    // LocalNodeState localNodeState (default value: null)
    test('to test the property `localNodeState`', () async {
      // TODO
    });

    // bool controlAvailable (default value: false)
    test('to test the property `controlAvailable`', () async {
      // TODO
    });

    // String error (default value: "")
    test('to test the property `error`', () async {
      // TODO
    });

    // List of ID's and addresses of other managers in the swarm. 
    // List<PeerNode> remoteManagers (default value: [])
    test('to test the property `remoteManagers`', () async {
      // TODO
    });

    // Total number of nodes in the swarm.
    // int nodes (default value: null)
    test('to test the property `nodes`', () async {
      // TODO
    });

    // Total number of managers in the swarm.
    // int managers (default value: null)
    test('to test the property `managers`', () async {
      // TODO
    });

    // ClusterInfo cluster (default value: null)
    test('to test the property `cluster`', () async {
      // TODO
    });


  });

}
