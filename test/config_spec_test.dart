import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ConfigSpec
void main() {
    var instance = new ConfigSpec();

  group('test ConfigSpec', () {
    // User-defined name of the config.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) config data. 
    // String data (default value: null)
    test('to test the property `data`', () async {
      // TODO
    });

    // Driver templating (default value: null)
    test('to test the property `templating`', () async {
      // TODO
    });


  });

}
