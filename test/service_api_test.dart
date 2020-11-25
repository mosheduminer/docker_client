import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for ServiceApi
void main() {
  var instance = ServiceApi();

  group('tests for ServiceApi', () {
    // Create a service
    //
    //Future<ServiceCreateResponse> serviceCreate(ServiceSpec body, { String xRegistryAuth }) async 
    test('test serviceCreate', () async {
      // TODO
    });

    // Delete a service
    //
    //Future serviceDelete(String id) async 
    test('test serviceDelete', () async {
      // TODO
    });

    // Inspect a service
    //
    //Future<Service> serviceInspect(String id, { bool insertDefaults }) async 
    test('test serviceInspect', () async {
      // TODO
    });

    // List services
    //
    //Future<List<Service>> serviceList({ String filters }) async 
    test('test serviceList', () async {
      // TODO
    });

    // Get service logs
    //
    // Get `stdout` and `stderr` logs from a service. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 
    //
    //Future<MultipartFile> serviceLogs(String id, { bool details, bool follow, bool stdout, bool stderr, int since, bool timestamps, String tail }) async 
    test('test serviceLogs', () async {
      // TODO
    });

    // Update a service
    //
    //Future<ServiceUpdateResponse> serviceUpdate(String id, int version, ServiceSpec body, { String registryAuthFrom, String rollback, String xRegistryAuth }) async 
    test('test serviceUpdate', () async {
      // TODO
    });

  });
}
