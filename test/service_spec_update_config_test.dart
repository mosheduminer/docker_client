import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ServiceSpecUpdateConfig
void main() {
    var instance = new ServiceSpecUpdateConfig();

  group('test ServiceSpecUpdateConfig', () {
    // Maximum number of tasks to be updated in one iteration (0 means unlimited parallelism). 
    // int parallelism (default value: null)
    test('to test the property `parallelism`', () async {
      // TODO
    });

    // Amount of time between updates, in nanoseconds.
    // int delay (default value: null)
    test('to test the property `delay`', () async {
      // TODO
    });

    // Action to take if an updated task fails to run, or stops running during the update. 
    // String failureAction (default value: null)
    test('to test the property `failureAction`', () async {
      // TODO
    });

    // Amount of time to monitor each updated task for failures, in nanoseconds. 
    // int monitor (default value: null)
    test('to test the property `monitor`', () async {
      // TODO
    });

    // The fraction of tasks that may fail during an update before the failure action is invoked, specified as a floating point number between 0 and 1. 
    // num maxFailureRatio (default value: null)
    test('to test the property `maxFailureRatio`', () async {
      // TODO
    });

    // The order of operations when rolling out an updated task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down. 
    // String order (default value: null)
    test('to test the property `order`', () async {
      // TODO
    });


  });

}
