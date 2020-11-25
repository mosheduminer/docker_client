import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for TaskSpecPlacement
void main() {
    var instance = new TaskSpecPlacement();

  group('test TaskSpecPlacement', () {
    // An array of constraint expressions to limit the set of nodes where a task can be scheduled. Constraint expressions can either use a _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find nodes that satisfy every expression (AND match). Constraints can match node or Docker Engine labels as follows:  node attribute       | matches                        | example ---------------------|--------------------------------|----------------------------------------------- `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4` `node.hostname`      | Node hostname                  | `node.hostname!=node-2` `node.role`          | Node role (`manager`/`worker`) | `node.role==manager` `node.platform.os`   | Node operating system          | `node.platform.os==windows` `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64` `node.labels`        | User-defined node labels       | `node.labels.security==high` `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`  `engine.labels` apply to Docker Engine labels like operating system, drivers, etc. Swarm administrators add `node.labels` for operational purposes by using the [`node update endpoint`](#operation/NodeUpdate). 
    // List<String> constraints (default value: [])
    test('to test the property `constraints`', () async {
      // TODO
    });

    // Preferences provide a way to make the scheduler aware of factors such as topology. They are provided in order from highest to lowest precedence. 
    // List<TaskSpecPlacementPreferences> preferences (default value: [])
    test('to test the property `preferences`', () async {
      // TODO
    });

    // Maximum number of replicas for per node (default value is 0, which is unlimited) 
    // int maxReplicas (default value: 0)
    test('to test the property `maxReplicas`', () async {
      // TODO
    });

    // Platforms stores all the platforms that the service's image can run on. This field is used in the platform filter for scheduling. If empty, then the platform filter is off, meaning there are no scheduling restrictions. 
    // List<Platform> platforms (default value: [])
    test('to test the property `platforms`', () async {
      // TODO
    });


  });

}
