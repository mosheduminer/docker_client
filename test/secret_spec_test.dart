import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SecretSpec
void main() {
    var instance = new SecretSpec();

  group('test SecretSpec', () {
    // User-defined name of the secret.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) data to store as secret.  This field is only used to _create_ a secret, and is not returned by other endpoints. 
    // String data (default value: null)
    test('to test the property `data`', () async {
      // TODO
    });

    // Driver driver (default value: null)
    test('to test the property `driver`', () async {
      // TODO
    });

    // Driver templating (default value: null)
    test('to test the property `templating`', () async {
      // TODO
    });


  });

}
