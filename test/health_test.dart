import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for Health
void main() {
    var instance = new Health();

  group('test Health', () {
    // Status is one of `none`, `starting`, `healthy` or `unhealthy`  - \"none\"      Indicates there is no healthcheck - \"starting\"  Starting indicates that the container is not yet ready - \"healthy\"   Healthy indicates that the container is running correctly - \"unhealthy\" Unhealthy indicates that the container has a problem 
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // FailingStreak is the number of consecutive failures
    // int failingStreak (default value: null)
    test('to test the property `failingStreak`', () async {
      // TODO
    });

    // Log contains the last few results (oldest first) 
    // List<HealthcheckResult> log (default value: [])
    test('to test the property `log`', () async {
      // TODO
    });


  });

}
