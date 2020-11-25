import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for TaskSpecRestartPolicy
void main() {
    var instance = new TaskSpecRestartPolicy();

  group('test TaskSpecRestartPolicy', () {
    // Condition for restart.
    // String condition (default value: null)
    test('to test the property `condition`', () async {
      // TODO
    });

    // Delay between restart attempts.
    // int delay (default value: null)
    test('to test the property `delay`', () async {
      // TODO
    });

    // Maximum attempts to restart a given container before giving up (default value is 0, which is ignored). 
    // int maxAttempts (default value: 0)
    test('to test the property `maxAttempts`', () async {
      // TODO
    });

    // Windows is the time window used to evaluate the restart policy (default value is 0, which is unbounded). 
    // int window (default value: 0)
    test('to test the property `window`', () async {
      // TODO
    });


  });

}
