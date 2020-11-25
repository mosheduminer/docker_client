import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for VolumeConfig
void main() {
    var instance = new VolumeConfig();

  group('test VolumeConfig', () {
    // The new volume's name. If not specified, Docker generates a name. 
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Name of the volume driver to use.
    // String driver (default value: "local")
    test('to test the property `driver`', () async {
      // TODO
    });

    // A mapping of driver options and values. These options are passed directly to the driver and are driver specific. 
    // Map<String, String> driverOpts (default value: {})
    test('to test the property `driverOpts`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });


  });

}
