# openapi.model.SwarmInfo

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodeID** | **String** | Unique identifier of for this node in the swarm. | [optional] [default to &quot;&quot;]
**nodeAddr** | **String** | IP address at which this node can be reached by other nodes in the swarm.  | [optional] [default to &quot;&quot;]
**localNodeState** | [**LocalNodeState**](LocalNodeState.md) |  | [optional] [default to null]
**controlAvailable** | **bool** |  | [optional] [default to false]
**error** | **String** |  | [optional] [default to &quot;&quot;]
**remoteManagers** | [**List&lt;PeerNode&gt;**](PeerNode.md) | List of ID&#39;s and addresses of other managers in the swarm.  | [optional] [default to []]
**nodes** | **int** | Total number of nodes in the swarm. | [optional] [default to null]
**managers** | **int** | Total number of managers in the swarm. | [optional] [default to null]
**cluster** | [**ClusterInfo**](ClusterInfo.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


