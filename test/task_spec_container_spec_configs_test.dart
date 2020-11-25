import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for TaskSpecContainerSpecConfigs
void main() {
    var instance = new TaskSpecContainerSpecConfigs();

  group('test TaskSpecContainerSpecConfigs', () {
    // TaskSpecContainerSpecFile1 file (default value: null)
    test('to test the property `file`', () async {
      // TODO
    });

    // Runtime represents a target that is not mounted into the container but is used by the task  <p><br /><p>  > **Note**: `Configs.File` and `Configs.Runtime` are mutually > exclusive 
    // Object runtime (default value: null)
    test('to test the property `runtime`', () async {
      // TODO
    });

    // ConfigID represents the ID of the specific config that we're referencing. 
    // String configID (default value: null)
    test('to test the property `configID`', () async {
      // TODO
    });

    // ConfigName is the name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID. 
    // String configName (default value: null)
    test('to test the property `configName`', () async {
      // TODO
    });


  });

}
