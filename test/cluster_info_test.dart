import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ClusterInfo
void main() {
    var instance = new ClusterInfo();

  group('test ClusterInfo', () {
    // The ID of the swarm.
    // String ID (default value: null)
    test('to test the property `ID`', () async {
      // TODO
    });

    // ObjectVersion version (default value: null)
    test('to test the property `version`', () async {
      // TODO
    });

    // Date and time at which the swarm was initialised in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds. 
    // String createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Date and time at which the swarm was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds. 
    // String updatedAt (default value: null)
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // SwarmSpec spec (default value: null)
    test('to test the property `spec`', () async {
      // TODO
    });

    // TLSInfo tLSInfo (default value: null)
    test('to test the property `tLSInfo`', () async {
      // TODO
    });

    // Whether there is currently a root CA rotation in progress for the swarm 
    // bool rootRotationInProgress (default value: null)
    test('to test the property `rootRotationInProgress`', () async {
      // TODO
    });

    // DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. If no port is set or is set to 0, the default port (4789) is used. 
    // int dataPathPort (default value: null)
    test('to test the property `dataPathPort`', () async {
      // TODO
    });

    // Default Address Pool specifies default subnet pools for global scope networks. 
    // List<String> defaultAddrPool (default value: [])
    test('to test the property `defaultAddrPool`', () async {
      // TODO
    });

    // SubnetSize specifies the subnet size of the networks created from the default subnet pool. 
    // int subnetSize (default value: null)
    test('to test the property `subnetSize`', () async {
      // TODO
    });


  });

}
