import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ServiceSpecRollbackConfig
void main() {
    var instance = new ServiceSpecRollbackConfig();

  group('test ServiceSpecRollbackConfig', () {
    // Maximum number of tasks to be rolled back in one iteration (0 means unlimited parallelism). 
    // int parallelism (default value: null)
    test('to test the property `parallelism`', () async {
      // TODO
    });

    // Amount of time between rollback iterations, in nanoseconds. 
    // int delay (default value: null)
    test('to test the property `delay`', () async {
      // TODO
    });

    // Action to take if an rolled back task fails to run, or stops running during the rollback. 
    // String failureAction (default value: null)
    test('to test the property `failureAction`', () async {
      // TODO
    });

    // Amount of time to monitor each rolled back task for failures, in nanoseconds. 
    // int monitor (default value: null)
    test('to test the property `monitor`', () async {
      // TODO
    });

    // The fraction of tasks that may fail during a rollback before the failure action is invoked, specified as a floating point number between 0 and 1. 
    // num maxFailureRatio (default value: null)
    test('to test the property `maxFailureRatio`', () async {
      // TODO
    });

    // The order of operations when rolling back a task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down. 
    // String order (default value: null)
    test('to test the property `order`', () async {
      // TODO
    });


  });

}
