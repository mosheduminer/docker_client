import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for Task
void main() {
    var instance = new Task();

  group('test Task', () {
    // The ID of the task.
    // String ID (default value: null)
    test('to test the property `ID`', () async {
      // TODO
    });

    // ObjectVersion version (default value: null)
    test('to test the property `version`', () async {
      // TODO
    });

    // String createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // String updatedAt (default value: null)
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Name of the task.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // TaskSpec spec (default value: null)
    test('to test the property `spec`', () async {
      // TODO
    });

    // The ID of the service this task is part of.
    // String serviceID (default value: null)
    test('to test the property `serviceID`', () async {
      // TODO
    });

    // int slot (default value: null)
    test('to test the property `slot`', () async {
      // TODO
    });

    // The ID of the node that this task is on.
    // String nodeID (default value: null)
    test('to test the property `nodeID`', () async {
      // TODO
    });

    // User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`). 
    // List<Object> assignedGenericResources (default value: [])
    test('to test the property `assignedGenericResources`', () async {
      // TODO
    });

    // TaskStatus status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // TaskState desiredState (default value: null)
    test('to test the property `desiredState`', () async {
      // TODO
    });


  });

}
