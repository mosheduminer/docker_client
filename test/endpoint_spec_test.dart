import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for EndpointSpec
void main() {
    var instance = new EndpointSpec();

  group('test EndpointSpec', () {
    // The mode of resolution to use for internal load balancing between tasks. 
    // String mode (default value: "vip")
    test('to test the property `mode`', () async {
      // TODO
    });

    // List of exposed ports that this service is accessible on from the outside. Ports can only be provided if `vip` resolution mode is used. 
    // List<EndpointPortConfig> ports (default value: [])
    test('to test the property `ports`', () async {
      // TODO
    });


  });

}
