import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for NetworkApi
void main() {
  var instance = NetworkApi();

  group('tests for NetworkApi', () {
    // Connect a container to a network
    //
    //Future networkConnect(String id, InlineObject3 container) async 
    test('test networkConnect', () async {
      // TODO
    });

    // Create a network
    //
    //Future<NetworkCreateResponse> networkCreate(InlineObject2 networkConfig) async 
    test('test networkCreate', () async {
      // TODO
    });

    // Remove a network
    //
    //Future networkDelete(String id) async 
    test('test networkDelete', () async {
      // TODO
    });

    // Disconnect a container from a network
    //
    //Future networkDisconnect(String id, InlineObject4 container) async 
    test('test networkDisconnect', () async {
      // TODO
    });

    // Inspect a network
    //
    //Future<Network> networkInspect(String id, { bool verbose, String scope }) async 
    test('test networkInspect', () async {
      // TODO
    });

    // List networks
    //
    // Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up. 
    //
    //Future<List<Network>> networkList({ String filters }) async 
    test('test networkList', () async {
      // TODO
    });

    // Delete unused networks
    //
    //Future<NetworkPruneResponse> networkPrune({ String filters }) async 
    test('test networkPrune', () async {
      // TODO
    });

  });
}
