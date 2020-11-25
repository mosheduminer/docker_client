import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for NetworkAttachmentConfig
void main() {
    var instance = new NetworkAttachmentConfig();

  group('test NetworkAttachmentConfig', () {
    // The target network for attachment. Must be a network name or ID. 
    // String target (default value: null)
    test('to test the property `target`', () async {
      // TODO
    });

    // Discoverable alternate names for the service on this network. 
    // List<String> aliases (default value: [])
    test('to test the property `aliases`', () async {
      // TODO
    });

    // Driver attachment options for the network target. 
    // Map<String, String> driverOpts (default value: {})
    test('to test the property `driverOpts`', () async {
      // TODO
    });


  });

}
