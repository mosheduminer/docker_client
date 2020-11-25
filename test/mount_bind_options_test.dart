import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for MountBindOptions
void main() {
    var instance = new MountBindOptions();

  group('test MountBindOptions', () {
    // A propagation mode with the value `[r]private`, `[r]shared`, or `[r]slave`.
    // String propagation (default value: null)
    test('to test the property `propagation`', () async {
      // TODO
    });

    // Disable recursive bind mount.
    // bool nonRecursive (default value: false)
    test('to test the property `nonRecursive`', () async {
      // TODO
    });


  });

}
