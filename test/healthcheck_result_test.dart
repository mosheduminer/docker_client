import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for HealthcheckResult
void main() {
    var instance = new HealthcheckResult();

  group('test HealthcheckResult', () {
    // Date and time at which this check started in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds. 
    // DateTime start (default value: null)
    test('to test the property `start`', () async {
      // TODO
    });

    // Date and time at which this check ended in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds. 
    // String end (default value: null)
    test('to test the property `end`', () async {
      // TODO
    });

    // ExitCode meanings:  - `0` healthy - `1` unhealthy - `2` reserved (considered unhealthy) - other values: error running probe 
    // int exitCode (default value: null)
    test('to test the property `exitCode`', () async {
      // TODO
    });

    // Output from last check
    // String output (default value: null)
    test('to test the property `output`', () async {
      // TODO
    });


  });

}
