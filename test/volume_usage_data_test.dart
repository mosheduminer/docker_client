import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for VolumeUsageData
void main() {
    var instance = new VolumeUsageData();

  group('test VolumeUsageData', () {
    // Amount of disk space used by the volume (in bytes). This information is only available for volumes created with the `\"local\"` volume driver. For volumes created with other volume drivers, this field is set to `-1` (\"not available\") 
    // int size (default value: null)
    test('to test the property `size`', () async {
      // TODO
    });

    // The number of containers referencing this volume. This field is set to `-1` if the reference-count is not available. 
    // int refCount (default value: null)
    test('to test the property `refCount`', () async {
      // TODO
    });


  });

}
