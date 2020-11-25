import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for Mount
void main() {
    var instance = new Mount();

  group('test Mount', () {
    // Container path.
    // String target (default value: null)
    test('to test the property `target`', () async {
      // TODO
    });

    // Mount source (e.g. a volume name, a host path).
    // String source_ (default value: null)
    test('to test the property `source_`', () async {
      // TODO
    });

    // The mount type. Available types:  - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container. - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed. - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs. - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container. 
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });

    // Whether the mount should be read-only.
    // bool readOnly (default value: null)
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // The consistency requirement for the mount: `default`, `consistent`, `cached`, or `delegated`.
    // String consistency (default value: null)
    test('to test the property `consistency`', () async {
      // TODO
    });

    // MountBindOptions bindOptions (default value: null)
    test('to test the property `bindOptions`', () async {
      // TODO
    });

    // MountVolumeOptions volumeOptions (default value: null)
    test('to test the property `volumeOptions`', () async {
      // TODO
    });

    // MountTmpfsOptions tmpfsOptions (default value: null)
    test('to test the property `tmpfsOptions`', () async {
      // TODO
    });


  });

}
