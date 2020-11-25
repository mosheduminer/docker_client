import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for RestartPolicy
void main() {
    var instance = new RestartPolicy();

  group('test RestartPolicy', () {
    // - Empty string means not to restart - `always` Always restart - `unless-stopped` Restart always except when the user has manually stopped the container - `on-failure` Restart only when the container exit code is non-zero 
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // If `on-failure` is used, the number of times to retry before giving up. 
    // int maximumRetryCount (default value: null)
    test('to test the property `maximumRetryCount`', () async {
      // TODO
    });


  });

}
