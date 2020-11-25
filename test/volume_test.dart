import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for Volume
void main() {
    var instance = new Volume();

  group('test Volume', () {
    // Name of the volume.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Name of the volume driver used by the volume.
    // String driver (default value: null)
    test('to test the property `driver`', () async {
      // TODO
    });

    // Mount path of the volume on the host.
    // String mountpoint (default value: null)
    test('to test the property `mountpoint`', () async {
      // TODO
    });

    // Date/Time the volume was created.
    // String createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Low-level details about the volume, provided by the volume driver. Details are returned as a map with key/value pairs: `{\"key\":\"value\",\"key2\":\"value2\"}`.  The `Status` field is optional, and is omitted if the volume driver does not support this feature. 
    // Map<String, Object> status (default value: {})
    test('to test the property `status`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // The level at which the volume exists. Either `global` for cluster-wide, or `local` for machine level. 
    // String scope (default value: "local")
    test('to test the property `scope`', () async {
      // TODO
    });

    // The driver specific options used when creating the volume. 
    // Map<String, String> options (default value: {})
    test('to test the property `options`', () async {
      // TODO
    });

    // VolumeUsageData usageData (default value: null)
    test('to test the property `usageData`', () async {
      // TODO
    });


  });

}
