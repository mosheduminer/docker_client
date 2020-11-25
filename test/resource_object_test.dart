import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ResourceObject
void main() {
    var instance = new ResourceObject();

  group('test ResourceObject', () {
    // int nanoCPUs (default value: null)
    test('to test the property `nanoCPUs`', () async {
      // TODO
    });

    // int memoryBytes (default value: null)
    test('to test the property `memoryBytes`', () async {
      // TODO
    });

    // User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`). 
    // List<Object> genericResources (default value: [])
    test('to test the property `genericResources`', () async {
      // TODO
    });


  });

}
