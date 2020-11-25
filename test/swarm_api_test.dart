import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for SwarmApi
void main() {
  var instance = SwarmApi();

  group('tests for SwarmApi', () {
    // Initialize a new swarm
    //
    //Future<String> swarmInit(InlineObject5 body) async 
    test('test swarmInit', () async {
      // TODO
    });

    // Inspect swarm
    //
    //Future<Swarm> swarmInspect() async 
    test('test swarmInspect', () async {
      // TODO
    });

    // Join an existing swarm
    //
    //Future swarmJoin(InlineObject6 body) async 
    test('test swarmJoin', () async {
      // TODO
    });

    // Leave a swarm
    //
    //Future swarmLeave({ bool force }) async 
    test('test swarmLeave', () async {
      // TODO
    });

    // Unlock a locked manager
    //
    //Future swarmUnlock(InlineObject7 body) async 
    test('test swarmUnlock', () async {
      // TODO
    });

    // Get the unlock key
    //
    //Future<UnlockKeyResponse> swarmUnlockkey() async 
    test('test swarmUnlockkey', () async {
      // TODO
    });

    // Update a swarm
    //
    //Future swarmUpdate(int version, SwarmSpec body, { bool rotateWorkerToken, bool rotateManagerToken, bool rotateManagerUnlockKey }) async 
    test('test swarmUpdate', () async {
      // TODO
    });

  });
}
