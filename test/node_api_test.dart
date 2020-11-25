import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for NodeApi
void main() {
  var instance = NodeApi();

  group('tests for NodeApi', () {
    // Delete a node
    //
    //Future nodeDelete(String id, { bool force }) async 
    test('test nodeDelete', () async {
      // TODO
    });

    // Inspect a node
    //
    //Future<Node> nodeInspect(String id) async 
    test('test nodeInspect', () async {
      // TODO
    });

    // List nodes
    //
    //Future<List<Node>> nodeList({ String filters }) async 
    test('test nodeList', () async {
      // TODO
    });

    // Update a node
    //
    //Future nodeUpdate(String id, int version, { NodeSpec body }) async 
    test('test nodeUpdate', () async {
      // TODO
    });

  });
}
