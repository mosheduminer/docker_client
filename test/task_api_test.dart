import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for TaskApi
void main() {
  var instance = TaskApi();

  group('tests for TaskApi', () {
    // Inspect a task
    //
    //Future<Task> taskInspect(String id) async 
    test('test taskInspect', () async {
      // TODO
    });

    // List tasks
    //
    //Future<List<Task>> taskList({ String filters }) async 
    test('test taskList', () async {
      // TODO
    });

    // Get task logs
    //
    // Get `stdout` and `stderr` logs from a task. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 
    //
    //Future<MultipartFile> taskLogs(String id, { bool details, bool follow, bool stdout, bool stderr, int since, bool timestamps, String tail }) async 
    test('test taskLogs', () async {
      // TODO
    });

  });
}
