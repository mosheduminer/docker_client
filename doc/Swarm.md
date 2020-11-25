# openapi.model.Swarm

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **String** | The ID of the swarm. | [optional] [default to null]
**version** | [**ObjectVersion**](ObjectVersion.md) |  | [optional] [default to null]
**createdAt** | **String** | Date and time at which the swarm was initialised in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] [default to null]
**updatedAt** | **String** | Date and time at which the swarm was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] [default to null]
**spec** | [**SwarmSpec**](SwarmSpec.md) |  | [optional] [default to null]
**tLSInfo** | [**TLSInfo**](TLSInfo.md) |  | [optional] [default to null]
**rootRotationInProgress** | **bool** | Whether there is currently a root CA rotation in progress for the swarm  | [optional] [default to null]
**dataPathPort** | **int** | DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. If no port is set or is set to 0, the default port (4789) is used.  | [optional] [default to null]
**defaultAddrPool** | **List&lt;String&gt;** | Default Address Pool specifies default subnet pools for global scope networks.  | [optional] [default to []]
**subnetSize** | **int** | SubnetSize specifies the subnet size of the networks created from the default subnet pool.  | [optional] [default to null]
**joinTokens** | [**JoinTokens**](JoinTokens.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


