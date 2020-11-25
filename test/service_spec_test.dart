import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ServiceSpec
void main() {
    var instance = new ServiceSpec();

  group('test ServiceSpec', () {
    // Name of the service.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // TaskSpec taskTemplate (default value: null)
    test('to test the property `taskTemplate`', () async {
      // TODO
    });

    // ServiceSpecMode mode (default value: null)
    test('to test the property `mode`', () async {
      // TODO
    });

    // ServiceSpecUpdateConfig updateConfig (default value: null)
    test('to test the property `updateConfig`', () async {
      // TODO
    });

    // ServiceSpecRollbackConfig rollbackConfig (default value: null)
    test('to test the property `rollbackConfig`', () async {
      // TODO
    });

    // Specifies which networks the service should attach to.
    // List<NetworkAttachmentConfig> networks (default value: [])
    test('to test the property `networks`', () async {
      // TODO
    });

    // EndpointSpec endpointSpec (default value: null)
    test('to test the property `endpointSpec`', () async {
      // TODO
    });


  });

}
