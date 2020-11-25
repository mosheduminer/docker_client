import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for DistributionApi
void main() {
  var instance = DistributionApi();

  group('tests for DistributionApi', () {
    // Get image information from the registry
    //
    // Return image digest and platform information by contacting the registry. 
    //
    //Future<DistributionInspectResponse> distributionInspect(String name) async 
    test('test distributionInspect', () async {
      // TODO
    });

  });
}
