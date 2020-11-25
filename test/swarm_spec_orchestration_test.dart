import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SwarmSpecOrchestration
void main() {
    var instance = new SwarmSpecOrchestration();

  group('test SwarmSpecOrchestration', () {
    // The number of historic tasks to keep per instance or node. If negative, never remove completed or failed tasks. 
    // int taskHistoryRetentionLimit (default value: null)
    test('to test the property `taskHistoryRetentionLimit`', () async {
      // TODO
    });


  });

}
