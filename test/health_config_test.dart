import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for HealthConfig
void main() {
    var instance = new HealthConfig();

  group('test HealthConfig', () {
    // The test to perform. Possible values are:  - `[]` inherit healthcheck from image or parent image - `[\"NONE\"]` disable healthcheck - `[\"CMD\", args...]` exec arguments directly - `[\"CMD-SHELL\", command]` run command with system's default shell 
    // List<String> test (default value: [])
    test('to test the property `test`', () async {
      // TODO
    });

    // The time to wait between checks in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit. 
    // int interval (default value: null)
    test('to test the property `interval`', () async {
      // TODO
    });

    // The time to wait before considering the check to have hung. It should be 0 or at least 1000000 (1 ms). 0 means inherit. 
    // int timeout (default value: null)
    test('to test the property `timeout`', () async {
      // TODO
    });

    // The number of consecutive failures needed to consider a container as unhealthy. 0 means inherit. 
    // int retries (default value: null)
    test('to test the property `retries`', () async {
      // TODO
    });

    // Start period for the container to initialize before starting health-retries countdown in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit. 
    // int startPeriod (default value: null)
    test('to test the property `startPeriod`', () async {
      // TODO
    });


  });

}
