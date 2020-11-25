import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for InlineObject6
void main() {
    var instance = new InlineObject6();

  group('test InlineObject6', () {
    // Listen address used for inter-manager communication if the node gets promoted to manager, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP). 
    // String listenAddr (default value: null)
    test('to test the property `listenAddr`', () async {
      // TODO
    });

    // Externally reachable address advertised to other nodes. This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the port number from the listen address is used. If `AdvertiseAddr` is not specified, it will be automatically detected when possible. 
    // String advertiseAddr (default value: null)
    test('to test the property `advertiseAddr`', () async {
      // TODO
    });

    // Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same addres as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster. 
    // String dataPathAddr (default value: null)
    test('to test the property `dataPathAddr`', () async {
      // TODO
    });

    // Addresses of manager nodes already participating in the swarm. 
    // List<String> remoteAddrs (default value: [])
    test('to test the property `remoteAddrs`', () async {
      // TODO
    });

    // Secret token for joining this swarm.
    // String joinToken (default value: null)
    test('to test the property `joinToken`', () async {
      // TODO
    });


  });

}
