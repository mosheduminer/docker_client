import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for InlineObject5
void main() {
    var instance = new InlineObject5();

  group('test InlineObject5', () {
    // Listen address used for inter-manager communication, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP). This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the default swarm listening port is used. 
    // String listenAddr (default value: null)
    test('to test the property `listenAddr`', () async {
      // TODO
    });

    // Externally reachable address advertised to other nodes. This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the port number from the listen address is used. If `AdvertiseAddr` is not specified, it will be automatically detected when possible. 
    // String advertiseAddr (default value: null)
    test('to test the property `advertiseAddr`', () async {
      // TODO
    });

    // Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same address as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other  nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster. 
    // String dataPathAddr (default value: null)
    test('to test the property `dataPathAddr`', () async {
      // TODO
    });

    // DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. if no port is set or is set to 0, default port 4789 will be used. 
    // int dataPathPort (default value: null)
    test('to test the property `dataPathPort`', () async {
      // TODO
    });

    // Default Address Pool specifies default subnet pools for global scope networks. 
    // List<String> defaultAddrPool (default value: [])
    test('to test the property `defaultAddrPool`', () async {
      // TODO
    });

    // Force creation of a new swarm.
    // bool forceNewCluster (default value: null)
    test('to test the property `forceNewCluster`', () async {
      // TODO
    });

    // SubnetSize specifies the subnet size of the networks created from the default subnet pool. 
    // int subnetSize (default value: null)
    test('to test the property `subnetSize`', () async {
      // TODO
    });

    // SwarmSpec spec (default value: null)
    test('to test the property `spec`', () async {
      // TODO
    });


  });

}
