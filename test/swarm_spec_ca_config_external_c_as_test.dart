import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SwarmSpecCAConfigExternalCAs
void main() {
    var instance = new SwarmSpecCAConfigExternalCAs();

  group('test SwarmSpecCAConfigExternalCAs', () {
    // Protocol for communication with the external CA (currently only `cfssl` is supported). 
    // String protocol (default value: "cfssl")
    test('to test the property `protocol`', () async {
      // TODO
    });

    // URL where certificate signing requests should be sent. 
    // String URL (default value: null)
    test('to test the property `URL`', () async {
      // TODO
    });

    // An object with key/value pairs that are interpreted as protocol-specific options for the external CA driver. 
    // Map<String, String> options (default value: {})
    test('to test the property `options`', () async {
      // TODO
    });

    // The root CA certificate (in PEM format) this external CA uses to issue TLS certificates (assumed to be to the current swarm root CA certificate if not provided). 
    // String cACert (default value: null)
    test('to test the property `cACert`', () async {
      // TODO
    });


  });

}
