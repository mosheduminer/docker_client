import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for PluginsInfo
void main() {
    var instance = new PluginsInfo();

  group('test PluginsInfo', () {
    // Names of available volume-drivers, and network-driver plugins.
    // List<String> volume (default value: [])
    test('to test the property `volume`', () async {
      // TODO
    });

    // Names of available network-drivers, and network-driver plugins.
    // List<String> network (default value: [])
    test('to test the property `network`', () async {
      // TODO
    });

    // Names of available authorization plugins.
    // List<String> authorization (default value: [])
    test('to test the property `authorization`', () async {
      // TODO
    });

    // Names of available logging-drivers, and logging-driver plugins.
    // List<String> log (default value: [])
    test('to test the property `log`', () async {
      // TODO
    });


  });

}
