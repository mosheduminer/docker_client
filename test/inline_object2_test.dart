import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for InlineObject2
void main() {
    var instance = new InlineObject2();

  group('test InlineObject2', () {
    // The network's name.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Check for networks with duplicate names. Since Network is primarily keyed based on a random ID and not on the name, and network name is strictly a user-friendly alias to the network which is uniquely identified using ID, there is no guaranteed way to check for duplicates. CheckDuplicate is there to provide a best effort checking of any networks which has the same name but it is not guaranteed to catch all name collisions. 
    // bool checkDuplicate (default value: null)
    test('to test the property `checkDuplicate`', () async {
      // TODO
    });

    // Name of the network driver plugin to use.
    // String driver (default value: "bridge")
    test('to test the property `driver`', () async {
      // TODO
    });

    // Restrict external access to the network.
    // bool internal (default value: null)
    test('to test the property `internal`', () async {
      // TODO
    });

    // Globally scoped network is manually attachable by regular containers from workers in swarm mode. 
    // bool attachable (default value: null)
    test('to test the property `attachable`', () async {
      // TODO
    });

    // Ingress network is the network which provides the routing-mesh in swarm mode. 
    // bool ingress (default value: null)
    test('to test the property `ingress`', () async {
      // TODO
    });

    // IPAM IPAM (default value: null)
    test('to test the property `IPAM`', () async {
      // TODO
    });

    // Enable IPv6 on the network.
    // bool enableIPv6 (default value: null)
    test('to test the property `enableIPv6`', () async {
      // TODO
    });

    // Network specific options to be used by the drivers.
    // Map<String, String> options (default value: {})
    test('to test the property `options`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });


  });

}
