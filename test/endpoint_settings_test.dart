import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for EndpointSettings
void main() {
    var instance = new EndpointSettings();

  group('test EndpointSettings', () {
    // EndpointIPAMConfig iPAMConfig (default value: null)
    test('to test the property `iPAMConfig`', () async {
      // TODO
    });

    // List<String> links (default value: [])
    test('to test the property `links`', () async {
      // TODO
    });

    // List<String> aliases (default value: [])
    test('to test the property `aliases`', () async {
      // TODO
    });

    // Unique ID of the network. 
    // String networkID (default value: null)
    test('to test the property `networkID`', () async {
      // TODO
    });

    // Unique ID for the service endpoint in a Sandbox. 
    // String endpointID (default value: null)
    test('to test the property `endpointID`', () async {
      // TODO
    });

    // Gateway address for this network. 
    // String gateway (default value: null)
    test('to test the property `gateway`', () async {
      // TODO
    });

    // IPv4 address. 
    // String iPAddress (default value: null)
    test('to test the property `iPAddress`', () async {
      // TODO
    });

    // Mask length of the IPv4 address. 
    // int iPPrefixLen (default value: null)
    test('to test the property `iPPrefixLen`', () async {
      // TODO
    });

    // IPv6 gateway address. 
    // String iPv6Gateway (default value: null)
    test('to test the property `iPv6Gateway`', () async {
      // TODO
    });

    // Global IPv6 address. 
    // String globalIPv6Address (default value: null)
    test('to test the property `globalIPv6Address`', () async {
      // TODO
    });

    // Mask length of the global IPv6 address. 
    // int globalIPv6PrefixLen (default value: null)
    test('to test the property `globalIPv6PrefixLen`', () async {
      // TODO
    });

    // MAC address for the endpoint on this network. 
    // String macAddress (default value: null)
    test('to test the property `macAddress`', () async {
      // TODO
    });

    // DriverOpts is a mapping of driver options and values. These options are passed directly to the driver and are driver specific. 
    // Map<String, String> driverOpts (default value: {})
    test('to test the property `driverOpts`', () async {
      // TODO
    });


  });

}
