import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for SecretApi
void main() {
  var instance = SecretApi();

  group('tests for SecretApi', () {
    // Create a secret
    //
    //Future<IdResponse> secretCreate({ SecretSpec body }) async 
    test('test secretCreate', () async {
      // TODO
    });

    // Delete a secret
    //
    //Future secretDelete(String id) async 
    test('test secretDelete', () async {
      // TODO
    });

    // Inspect a secret
    //
    //Future<Secret> secretInspect(String id) async 
    test('test secretInspect', () async {
      // TODO
    });

    // List secrets
    //
    //Future<List<Secret>> secretList({ String filters }) async 
    test('test secretList', () async {
      // TODO
    });

    // Update a Secret
    //
    //Future secretUpdate(String id, int version, { SecretSpec body }) async 
    test('test secretUpdate', () async {
      // TODO
    });

  });
}
